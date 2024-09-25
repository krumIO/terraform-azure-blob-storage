provider "azurerm" {
  features {}
}

module "azure_blob_storage" {
  source = "../../"  # This assumes the example is in a subdirectory of the module

  resource_group_name      = "cfi-resources"
  location                 = "eastus"
  storage_account_name     = "cfistorage${random_string.suffix.result}"
  container_names          = ["container1", "container2"]
  enable_versioning        = true
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  tags = {
    Environment = "Development"
    Project     = "CFIAzureBlobStorage"
  }
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}