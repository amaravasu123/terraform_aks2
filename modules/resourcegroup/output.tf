output "az_rg_id" {
  description = "The ID of the resource group"
  value       = azurerm_resource_group.az_rg.id
}

output "resource_group_name" {
  value = azurerm_resource_group.az_rg.name
}