resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.addr_space

  tags = {
    environment = "Production"
  }
}
