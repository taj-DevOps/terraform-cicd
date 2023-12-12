#######################  resource group  ###################
proj_name = "sonata"
environment = "prod"
rg_name = "resource-group"
rg_location = "East US"

########################### vnet-1 and subnet-1 #############
vnet_1_name = "vnet-1"
vnet_1_cidr = ["10.0.0.0/16"]
subnet_1_name = "subnet-1"
subnet_1_cidr = ["10.0.1.0/24"]

########################## vnet-2 and subnet-2 ###############
vnet_2_name = "vnet-2"
vnet_2_cidr = ["20.0.0.0/16"]
subnet_2_name = "subnet-2"
subnet_2_cidr = ["20.0.1.0/24"]

########################## public-ip-1 and public-ip-2 #########
pip_1_name_prefix = "public-ip-1"
pip_2_name_prefix = "public-ip-2"

########################## nic-1 and nic-2 #########
nic_1_name_prefix = "nic-1"
ip_config_1_name = "nic-ip-config-1"

nic_2_name_prefix = "nic-2"
ip_config_2_name = "nic-ip-config-2"

######################### virtula machines ########
linux_vm_name = "vm-2"
linux_vm_sizes = ["Standard_B1s", "Standard_D2s_v3", "Standard_F4s"]

windows_vm_name = "vm-1"
windows_vm_sizes = ["Standard_B1s", "Standard_B2s",]

####################### data disk #################
data_disk_1_name = "linux-disk-1"
disk_1_size_gb = "20"
disk_1_lun = "0"

data_disk_2_name = "linux-disk-2"
disk_2_size_gb = "20"
disk_2_lun = "1"

data_disk_3_name = "windows-disk-1"
disk_3_size_gb = "20"
disk_3_lun = "0"

data_disk_4_name = "windows-disk-2"
disk_4_size_gb = "20"
disk_4_lun = "1"

