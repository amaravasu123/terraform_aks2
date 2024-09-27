output "az_vnet_id" {
  description = "The ID of the vnet"
  value       = azurerm_virtual_network.az_vnet.id
}

output "az_subnet_id" {
  description = "The ID of the subnet"
  value       = azurerm_subnet.az_subnet.id
}