# Output variable: Blob Storage container name
# output "blob_storage_container" {
#   value = "https://${azurerm_storage_account.terraform_state.name}.blob.core.windows.net/${azurerm_storage_container.terraform_state.name}/"
# }

output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.tfexample.name
}

output "storage_account_id" {
  description = "ID of the created storage account"
  value       = azurerm_storage_account.terraform_state.id
}

output "storage_account_name" {
  description = "Name of the created storage account"
  value       = azurerm_storage_account.terraform_state.name
}

output "primary_blob_endpoint" {
  description = "Primary blob endpoint"
  value       = azurerm_storage_account.terraform_state.primary_blob_endpoint
}

output "container_name" {
  description = "Names of the created containers"
  value       = azurerm_storage_container.terraform_state.name
}