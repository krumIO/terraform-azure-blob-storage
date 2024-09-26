output "resource_group_name" {
  description = "Name of the created resource group"
  value       = module.azure_blob_storage.resource_group_name
}

output "storage_account_name" {
  description = "Name of the created storage account"
  value       = module.azure_blob_storage.storage_account_name
}

output "primary_blob_endpoint" {
  description = "Primary blob endpoint"
  value       = module.azure_blob_storage.primary_blob_endpoint
}

output "container_name" {
  description = "Names of the created containers"
  value       = module.azure_blob_storage.container_name
}

