output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storage.name
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint for the storage account."
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.storage.id
}

output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.rg.name
}

output "container_name" {
  description = "The name of the blob container."
  value       = azurerm_storage_container.blob_container.name
}
