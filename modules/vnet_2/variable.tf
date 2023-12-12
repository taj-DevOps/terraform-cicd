variable "proj_name" {
  description = "this is the name for the project"
  default = ""
}

variable "environment" {
  description = "This the environment" 
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

##################################   vnet-2 and subnet-2 #######################

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
