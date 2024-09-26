resource "azurerm_resource_group" "az_rg" {
  name     = var.resource_group_name
  location = var.region
  tags     = merge(var.tags, var.additional_resource_group_tags)
}