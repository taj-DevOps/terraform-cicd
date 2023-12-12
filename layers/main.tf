##########################
#####################  Resource Group #######################
module "rg" {
  source = "../modules/rg"
  proj_name = "${var.proj_name}"
  environment = "${var.environment}"
  rg_name = "${var.rg_name}"
  rg_location = "${var.rg_location}"
}

############################ vnet-1 ##########################
module "vnet_1" {
  source = "../modules/vnet_1"
  proj_name  = "${var.proj_name}"
  environment = "${var.environment}"
  rg_name = "${var.rg_name}"
  rg_location = "${var.rg_location}"

  vnet_1_name = "${var.vnet_1_name}"
  vnet_1_cidr = "${var.vnet_1_cidr}"
  subnet_1_name = "${var.subnet_1_name}"
  subnet_1_cidr = "${var.subnet_1_cidr}"

  depends_on = [ module.rg ]
}

############################  vnet-2 ######################
module "vnet_2" {
  source = "../modules/vnet_2"
  proj_name  = "${var.proj_name}"
  environment = "${var.environment}"
  rg_name = "${var.rg_name}"
  rg_location = "${var.rg_location}"

  vnet_2_name = "${var.vnet_2_name}"
  vnet_2_cidr = "${var.vnet_2_cidr}"
  subnet_2_name = "${var.subnet_2_name}"
  subnet_2_cidr = "${var.subnet_2_cidr}"

  depends_on = [ module.rg ]
}

############################  public-ip-1 & public-ip-2 ########
module "pip" {
  source = "../modules/pip"
  proj_name  = "${var.proj_name}"
  environment = "${var.environment}"
  rg_name = "${var.rg_name}"
  rg_location = "${var.rg_location}"

  pip_1_name_prefix = "${var.pip_1_name_prefix}"
  pip_2_name_prefix = "${var.pip_2_name_prefix}"

  depends_on = [ module.rg ]
}

############################ nic-1 and nic-2 ##############
module "nic" {
  source = "../modules/nic"
  proj_name  = "${var.proj_name}"
  environment = "${var.environment}"
  rg_name = "${var.rg_name}"
  rg_location = "${var.rg_location}"

  nic_1_name_prefix = "${var.nic_1_name_prefix}"
  ip_config_1_name = "${var.ip_config_1_name}"
  subnet_1_id = "${module.vnet_1.subnet_1_id}"
  pip_1_id = "${module.pip.pip_1_id}"

  nic_2_name_prefix = "${var.nic_2_name_prefix}"
  ip_config_2_name = "${var.ip_config_2_name}"
  subnet_2_id = "${module.vnet_2.subnet_2_id}"
  pip_2_id = "${module.pip.pip_2_id}"

  depends_on = [ module.rg, module.vnet_1, module.vnet_2, module.pip ]
}

########################## virtual machines ################
module "vm" {
  source = "../modules/vm"
  keyvault_name = "devops-prod-keyvault2023"
  keyvault_rg = "devops-rg"
  admin_username_secret = "devops-vm-username"
  admin_password_secret = "devops-vm-password"
  proj_name  = "${var.proj_name}"
  environment = "${var.environment}"
  rg_name = "${var.rg_name}"
  rg_location = "${var.rg_location}"

  linux_vm_name = "${var.linux_vm_name}"
  linux_vm_sizes = "${var.linux_vm_sizes}"
  nic_2_id = "${module.nic.nic_2_id}"

  windows_vm_name = "${var.windows_vm_name}"
  windows_vm_sizes = "${var.windows_vm_sizes}"
  nic_1_id = "${module.nic.nic_1_id}"

  depends_on = [ module.rg, module.vnet_1, module.vnet_2, module.pip ]
}

############################## data disks ################
module "data_disk" {
  source = "../modules/data_disk"
  proj_name  = "${var.proj_name}"
  environment = "${var.environment}"
  rg_name = "${var.rg_name}"
  rg_location = "${var.rg_location}"

  data_disk_1_name = "${var.data_disk_1_name}"
  disk_1_size_gb = "${var.disk_1_size_gb}"
  disk_1_lun = "${var.disk_1_lun}"
  vm_1_id = "${module.vm.linux_vm_id}"

  data_disk_2_name = "${var.data_disk_2_name}"
  disk_2_size_gb = "${var.disk_2_size_gb}"
  disk_2_lun = "${var.disk_2_lun}"
  vm_2_id = "${module.vm.linux_vm_id}"

  data_disk_3_name = "${var.data_disk_3_name}"
  disk_3_size_gb = "${var.disk_3_size_gb}"
  disk_3_lun = "${var.disk_3_lun}"
  vm_3_id = "${module.vm.windows_vm_id}"

  data_disk_4_name = "${var.data_disk_4_name}"
  disk_4_size_gb = "${var.disk_4_size_gb}"
  disk_4_lun = "${var.disk_4_lun}"
  vm_4_id = "${module.vm.windows_vm_id}"

  depends_on = [ module.rg, module.vm ]
}