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

#####################  public-ip 1 ###########
variable "pip_1_name_prefix" {
  description = "This the name of public ip"
  default = ""
}

#####################  public-ip 2 ###########
variable "pip_2_name_prefix" {
  description = "This the name of public ip"
  default = ""
}
