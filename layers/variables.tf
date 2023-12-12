################  variables for resource group ##########

variable "proj_name" {
  description = "This is the name of the project"
  default = ""
}

variable "environment" {
  description = "This is the environment name"
  default = ""
}

variable "rg_name" {
  description = "This is the name of the resource group"
  default = ""
}

variable "rg_location" {
  description = "This is the location for resource group"
  default = ""
}

########################################################################
###################  variables for vnet-1 & subnet-1   #################

variable "vnet_1_name" {
  description = "This is the name for Vnet"
  default = ""
}

variable "vnet_1_cidr" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "subnet_1_name" {
  description = "This is the name for Vnet"
  default = ""
}

variable "subnet_1_cidr" {
  description = "cidr block for vnet"
  type        = list(string)
}

########################################################################
###################  variables for vnet-2 & subnet-2   #################

variable "vnet_2_name" {
  description = "This is the name for Vnet"
  default = ""
}

variable "vnet_2_cidr" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "subnet_2_name" {
  description = "This is the name for Vnet"
  default = ""
}

variable "subnet_2_cidr" {
  description = "cidr block for vnet"
  type        = list(string)
}

################################################################################
###################  variables for public-ip 1 and public-ip 2  #################
###################  public-ip 1
variable "pip_1_name_prefix" {
  description = "This the name of public ip"
  default = ""
}

####################  public-ip 2 
variable "pip_2_name_prefix" {
  description = "This the name of public ip"
  default = ""
}
###################################################################
####################### network interface variables ##############
####################### nic_1
variable "nic_1_name_prefix" {
  description = "This the name of nic_1"
  default     = "" 
}

variable "ip_config_1_name" {
  description = "This the name of nic_ip_config_1"
  default     = ""   
}

variable "subnet_1_id" {
  description = "ID of the subnet to associate with the NIC"
  type        = string
  default     = ""
}

variable "pip_1_id" {
  description = "ID of the public ip to associate with the NIC"
  type        = string
  default     = ""
}

#######################  nic_2
variable "nic_2_name_prefix" {
  description = "This the name of nic_1"
  default     = "" 
}

variable "ip_config_2_name" {
  description = "This the name of nic_ip_config_2"
  default     = ""   
}

variable "subnet_2_id" {
  description = "ID of the subnet to associate with the NIC"
  type        = string
  default     = ""
}

variable "pip_2_id" {
  description = "ID of the public ip to associate with the NIC"
  type        = string
  default     = ""
}

############################################################################
######################### keyvault variables ########
variable "keyvault_name" {
  description = "this is the name for keyvault"
  default = ""
}

variable "keyvault_rg" {
  description = "this is the rg name of keyvault"
  default = ""
}

variable "admin_username_secret" {
  description = "this is the secret name for vm adminuser given in key vault"
  default = ""
}

variable "admin_password_secret" {
  description = "this is the secret name for vm adminpassword given in key vault"
  default = ""
}

####################### virtual machine variables ########################
####################### linux virtual machine ###############
variable "linux_vm_name" {
  description = "This is the name of Vm"
  default = "azure-vm"
}

variable "nic_2_id" {
  description = "List of NIC IDs"
  default = ""
}

variable "linux_vm_sizes" {
  description = "A list of Azure VM sizes to choose from."
  # type    = list(string)
  default = ""
}

################################ windows virtual machine ###############
variable "windows_vm_name" {
  description = "This is the name of Vm"
  default = "azure-vm"
}

variable "nic_1_id" {
  description = "List of NIC IDs"
  default = ""
}

variable "windows_vm_sizes" {
  description = "A list of Azure VM sizes for Windows virtual machines."
  # type        = list(string)
  default     = ""
}

##################################################################################
################################ data disk variables ################
#################### data disk 1 ##########
variable "data_disk_1_name" {
  description = "this is the name for disk_1"
  default = ""
}

variable "disk_1_size_gb" {
  description = "data disk size for disk_1"
  default = ""
}

variable "vm_1_id" {
  description = "virtual machine id"
  type = string
  default = ""
}

variable "disk_1_lun" {
  description = "Logical Unit Number (LUN) for disk_1"
  default = ""
}

#################### data disk 2 ##########
variable "data_disk_2_name" {
  description = "this is the name for disk_2"
  default = ""
}

variable "disk_2_size_gb" {
  description = "data disk size for disk_2"
  default = ""
}

variable "disk_2_lun" {
  description = "Logical Unit Number (LUN) for disk_2"
  default = ""
}

variable "vm_2_id" {
  description = "virtual machine id"
  type = string
  default = ""
}

#################### data disk 3 ##########
variable "data_disk_3_name" {
  description = "this is the name for disk_1"
  default = ""
}

variable "disk_3_size_gb" {
  description = "data disk size for disk_3"
  default = ""
}

variable "disk_3_lun" {
  description = "Logical Unit Number (LUN) for disk_3"
  default = ""
}


variable "vm_3_id" {
  description = "virtual machine id"
  type = string
  default = ""
}

#################### data disk 4 ##########
variable "data_disk_4_name" {
  description = "this is the name for disk_4"
  default = ""
}

variable "disk_4_size_gb" {
  description = "data disk size for disk_4"
  default = ""
}

variable "disk_4_lun" {
  description = "Logical Unit Number (LUN) for disk_4"
  default = ""
}

variable "vm_4_id" {
  description = "virtual machine id"
  type = string
  default = ""
}
