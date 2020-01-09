resource "azurerm_virtual_network" "example" {
  count               = var.vnet_num
  
  name           			= var.vnet_num == 1 ? var.vnet_name: format("%s_%02d", var.vnet_name, count.index + 1)
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.addr_space

  tags = {
    var.tag_key = var.tag_value
  }
}
