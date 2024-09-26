# Create a Resource Group if it doesn’t exist
resource "azurerm_resource_group" "tfexample" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# Create a Storage account
resource "azurerm_storage_account" "terraform_state" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tfexample.name
  location                 = azurerm_resource_group.tfexample.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  blob_properties {
    versioning_enabled = var.enable_versioning
  }

  tags = var.tags

}

# Create a Storage container
resource "azurerm_storage_container" "terraform_state" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.terraform_state.name
  container_access_type = "private"
}