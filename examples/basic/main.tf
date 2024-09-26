provider "azurerm" {
  features {}
}

module "azure_blob_storage" {
  # source = "../../"  # This assumes the example is in a subdirectory of the module
  source = "github.com/krumio/terraform-azure-blob-storage"

  resource_group_name      = "cfi-resources"
  location                 = "eastus"
  storage_account_name     = "cfistorage${random_string.suffix.result}"
  container_name          = "container1"
  enable_versioning        = true
  
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