resource "azurerm_virtual_network" "vnet" {
  name                = format("%s-%s", "vnet", var.vnet_name)
  location            = var.location
  address_space       = [var.address_space]
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
