resource "azurerm_virtual_network" "az_vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags                = merge(var.tags, var.additional_vnet_tags)
}

resource "azurerm_subnet" "az_subnet" {
  name                 = "${var.vnet_name}-subnet"
  resource_group_name  = module.resource-group.resource_group_name
  virtual_network_name = azurerm_virtual_network.az_vnet.name
  address_prefixes     = var.subnet_address_prefix
}