output "id" {
  description = "Resource Group id"
  value       = azurerm_resource_group.rg.id
}
output "name" {
  description = "Resource Group name"
  value       = azurerm_resource_group.rg.name
}
output "resource" {
  description = "Resource Group object"
  value       = azurerm_resource_group.rg
}