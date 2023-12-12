##################  output of resource group  #############
output "resource_group_name" {
  value = "${module.rg.rg_name}"
  # sensitive = true
}

output "resource_group_location" {
  value = "${module.rg.rg_location}"
  # sensitive = true
}

output "resource_group_id" {
  value = "${module.rg.rg_id}"
  sensitive = true
}

##############################################################
##################  output of vnet-1 & subnet-1  #############
output "virtual_network_1_name" {
  value = "${module.vnet_1.vnet_1_name}"
    # sensitive = true
}

output "virtual_network_1_id" {
  value = "${module.vnet_1.vnet_1_id}"
  sensitive = true
}

output "subnet_1_names" {
  value = "${module.vnet_1.subnet_1_name}"
  # sensitive = true
}

output "subnet_1_ids" {
  value = "${module.vnet_1.subnet_1_id}"
  sensitive = true
}

################################################################
####################  output of vnet-2 & subnet-2  #############
output "virtual_network_2_name" {
  value = "${module.vnet_2.vnet_2_name}"
    # sensitive = true
}

output "virtual_network_2_id" {
  value = "${module.vnet_2.vnet_2_id}"
  sensitive = true
}

output "subnet_2_names" {
  value = "${module.vnet_2.subnet_2_name}"
  # sensitive = true
}

output "subnet_2_ids" {
  value = "${module.vnet_2.subnet_2_id}"
  sensitive = true
}

##########################################################################
####################  output of public-ip 1 and public-ip 2  #############
################ public-ip 1 
output "public_ip_1_name" {
  value = "${module.pip.pip_1_name}"
  # sensitive = true
}

output "public_ip_1_id" {
  value = "${module.pip.pip_1_id}"
  sensitive = true
}

################ public-ip 2 
output "public_ip_2_name" {
  value = "${module.pip.pip_2_name}"
  # sensitive = true
}

output "public_ip_2_id" {
  value = "${module.pip.pip_2_id}"
  sensitive = true
}

##########################################################################
####################  output of nic 1 and nic 2  #############
####################  network interface 1
output "network_interface_1_name" {
  value = "${module.nic.nic_1_name}"
  # sensitive = true
}

output "network_interface_1_id" {
  value = "${module.nic.nic_1_id}"
  # sensitive = true
}

output "nic_ip_1_config_name" {
  value = "${module.nic.ip_config_1_name}"
  # sensitive = true
}

##########################################################################
####################  outputs of virtual machines  #############
#################### linux vm outputs
output "linux_virtual_machine_name" {
  value = "${module.vm.linux_vm_name}"
  # sensitive = true
}

output "linux_virtual_machine_location" {
  value = "${module.vm.linux_vm_location}"
  # sensitive = true
}

output "linux_virtual_machine_id" {
  value = "${module.vm.linux_vm_id}"
  sensitive = true
}

output "linux_virtual_machine_size" {
  value = "${module.vm.linux_vm_size}"
  # sensitive = true
}

########################  windows vm outputs 
output "windows_virtual_machine_name" {
  value = "${module.vm.windows_vm_name}"
  # sensitive = true
}

output "windows_virtual_machine_location" {
  value = "${module.vm.windows_vm_location}"
  # sensitive = true
}

output "windows_virtual_machine_id" {
  value = "${module.vm.windows_vm_id}"
  sensitive = true
}

output "windows_virtual_machine_size" {
  value = "${module.vm.windows_vm_size}"
  # sensitive = true
}

##########################################################################
####################  outputs of data disk  #############

output "data_disk_1_name" {
  value = "${module.data_disk.disk_1_name}"
  # sensitive = true
}

output "data_disk_2_name" {
  value = "${module.data_disk.disk_2_name}"
  # sensitive = true
}

output "data_disk_3_name" {
  value = "${module.data_disk.disk_3_name}"
  # sensitive = true
}

output "data_disk_4_name" {
  value = "${module.data_disk.disk_4_name}"
  # sensitive = true
}