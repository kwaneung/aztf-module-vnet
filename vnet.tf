resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}"
  location            = "${var.location}"
  address_space       = ["${var.address_space}"]
  resource_group_name = "${azurerm_resource_group.vnet.name}"
  dns_servers         = "${var.dns_servers}"
  tags                = "${var.tags}"
}
