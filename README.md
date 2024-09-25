# Azure Blob Storage Terraform Module

This Terraform module deploys an Azure Blob Storage account with the specified containers.

## Usage

```hcl
module "azure_blob_storage" {
  source  = "github.com/krumio/terraform-azure-blob-storage"
  
  resource_group_name      = "my-resource-group"
  location                 = "eastus"
  storage_account_name     = "mystorageaccount"
  container_names          = ["container1", "container2"]
  enable_versioning        = true
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
  tags = {
    Environment = "Production"
    Project     = "MyProject"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource_group_name | Name of the resource group | `string` | n/a | yes |
| location | Azure region where resources will be created | `string` | n/a | yes |
| storage_account_name | Name of the storage account | `string` | n/a | yes |
| account_tier | Performance tier of the storage account | `string` | `"Standard"` | no |
| account_replication_type | Replication type for the storage account | `string` | `"LRS"` | no |
| enable_versioning | Enable blob versioning | `bool` | `false` | no |
| container_names | List of container names to create | `list(string)` | `[]` | no |
| container_access_type | Access type for the containers | `string` | `"private"` | no |
| tags | Tags to apply to the resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource_group_name | Name of the created resource group |
| storage_account_id | ID of the created storage account |
| storage_account_name | Name of the created storage account |
| primary_blob_endpoint | Primary blob endpoint |
| container_names | Names of the created containers |

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| azurerm | >= 2.0 |

## License

This module is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
