# aztf-module-vnet
Azure Terraform Module for Virtual Machine

Example) Create vnet
```
module "vnet1" {
  source                            = "git://github.com/kwaneung/aztf-module-vnet.git"

  prefix                            = "exmp"
  
  vnet_name                         = "exmp_vnet"
  
  addr_space                        = "10.0.0.0/16"
  
}
```
