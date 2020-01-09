variable "prefix" {
  description = "Prefix for the workspace"
}

variable "vnet_name" {
  description = "vnet name"        
}

variable "addr_space" {
  description = "vnet address space"        
}

variable "location" {
  default = "koreacentral"
  description = "location"        
}

variable "rg_name" {
  default = "rg_test01"
  description = "resource_group_name"        
}
