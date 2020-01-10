resource "azurerm_virtual_network" "example_vnet" {
  count               = var.vnet_num
  
  name           			= var.vnet_num == 1 ?  format("%s_%s", "vnet", var.vnet_name): format("%s_%s_%02d", "vnet", var.vnet_name, count.index + 1)
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.addr_space

  tags = {
    (var.tag_key) = var.tag_value
  }
}
