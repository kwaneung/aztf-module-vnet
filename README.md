# aztf-module-vnet
Azure Terraform Module for Virtual Network

Resource group must be created first.

Example) Create vnet
```
module "vnet" {
  source                            = "git://github.com/kwaneung/aztf-module-vnet.git"

  resource_group_name               = azurerm_resource_group.rg.name
  
  vnet_name                         = "websrv"  

  location                          = azurerm_resource_group.rg.location
  
  address_space                     = "10.0.0.0/16"

  tags = {
    test = "vnet_module"
  }
}
```
