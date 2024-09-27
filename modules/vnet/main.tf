resource "azurerm_virtual_network" "az_vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.az_rg.name
  address_space       = var.address_space
  tags                = var.tags
}

# azurerm_subnet to create the azure subnet in the azure vnet
# official documentation https://registry.terraform.io/providers/hashicorp/azurerm/3.65.0/docs/resources/subnet
resource "azurerm_subnet" "az_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.az_rg.name
  virtual_network_name = azurerm_virtual_network.az_vnet.name
  address_prefixes     = var.subnet_address_prefix
  service_endpoints    = var.service_endpoints
}