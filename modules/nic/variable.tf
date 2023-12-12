variable "proj_name" {
  description = "This is the name for the project"
  default     = ""
}

variable "environment" {
  description = "This is the environment" 
  default     = ""
} 

variable "rg_name" {
  description = "This the name of resource group"
  default     = ""
}

variable "rg_location" {
  description = "This the name of resource group location"
  default     = ""
}

###################################### nic variables ##############
#######################  nic_1
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
