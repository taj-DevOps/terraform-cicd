variable "environment" {
  description = "This the environment" 
  default = ""
} 
variable "proj_name" {
  description = "this is the name for the project"
  default = ""
}

variable "rg_name" {
  description = "This the name of resource group"  #Give the rg_name as per the requirement
  default = ""
}

variable "rg_location" {
  description = "This the name of resource group location"  #Give the rg_location as per the requirement
  default = ""
}

#################################### variables for  virtual machines #############
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

################################ linux virtual machine ###############
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


