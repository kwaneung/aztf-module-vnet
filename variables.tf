variable "prefix" {
  description = "Prefix for the workspace"
}

variable "vnet_name" {
  description = "Vnet name"        
}

variable "vnet_num" {
  description = "Number of Vnets to create"        
}

variable "addr_space" {
  description = "Vnet address space"        
}

variable "location" {
  description = "Location"        
}

variable "rg_name" {
  description = "Resource_group_name"        
}

variable "tag_key" {
  description = "Key name of tag"        
}

variable "tag_value" {
  description = "Value name of tag"        
}
