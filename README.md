# aztf-module-vnet
Azure Terraform Module for Virtual Network

Resource group must be created first.

Example) Create vnet
```
module "vnet1" {
  source                            = "git://github.com/kwaneung/aztf-module-vnet.git"

  prefix                            = "exmp"
  
  vnet_name                         = "exmp_vnet"
  
  vnet_num                          = 2
  
  addr_space                        = ["10.0.0.0/16"]
  
  location                          = azurerm_resource_group.{resource group ID}.location

  rg_name                           = azurerm_resource_group.{resource group ID}.name
  
  tag_key                           = "05"

  tag_value                         = "this"
  
}
```
