resource "azurerm_virtual_network" "example" {
  count               = var.vnet_num
  
  name           			= var.vnet_num == 1 ? local.vm_name: format("%s-%02d", local.vnet_name, count.index + 1)
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.addr_space

  tags = {
    environment = "Production"
  }
}
