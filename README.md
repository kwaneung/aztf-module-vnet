# aztf-module-vnet
Azure Terraform Module for Virtual Network

Example) Create vnet
```
module "vnet1" {
  source                            = "git://github.com/kwaneung/aztf-module-vnet.git"

  prefix                            = "exmp"
  
  vnet_name                         = "exmp_vnet"
  
  addr_space                        = "10.0.0.0/16"
  
  location                          = azurerm_resource_group.{resource group ID}.location

  rg_name                           = azurerm_resource_group.{resource group ID}.name
  
}
```
