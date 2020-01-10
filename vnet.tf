resource "azurerm_virtual_network" "example" {
  count               = var.vnet_num
  
  name           			= var.vnet_num == 1 ? var.vnet_name: format("%s_%s_%02d", "vnet", var.vnet_name, count.index + 1)
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.addr_space

  tags = {
    (var.tag_key) = var.tag_value
  }
}


module "subnet" {
  source                            = "git://github.com/kwaneung/aztf-module-subnet.git"

  prefix                            = "exmp"
  
  subnet_name                       = "exmp_subnet"
  
  subnet_num                        = 1
  
  addr_prefix                       = "10.0.0.0/24"

  rg_name                           = var.rg_name
  
  vnet_name                         = var.vnet_name 
}
