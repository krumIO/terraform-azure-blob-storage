# Basic Azure Blob Storage Example

This example demonstrates how to use the Azure Blob Storage Terraform module to create a storage account with two containers.

## Usage

To run this example, you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources anymore.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| azurerm | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0 |
| random | >= 2.0 |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| resource_group_name | Name of the created resource group |
| storage_account_name | Name of the created storage account |
| primary_blob_endpoint | Primary blob endpoint |
| container_name | Names of the created container |