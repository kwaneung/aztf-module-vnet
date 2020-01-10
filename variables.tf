variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "vnet_name" {
  description = "Name of the vnet to create"
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
  default     = "koreacentral"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "The tags to associate with your network and subnets."

  default = {
    tag1 = ""
    tag2 = ""
  }
}
