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

############################ data disk variables ###########
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
  description = "this is the name for disk_3"
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
