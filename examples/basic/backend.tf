terraform {
  backend "azurerm" {
    resource_group_name  = "cfi-tfs-rg-name"
    storage_account_name = "cfitfsstoragename"
    container_name       = "cfi-tfs-container-name"
    key                  = "cfi-blob.tfstate"
    tenant_id            = "aa7600f5-0d7c-4503-8da7-0513529847ac"
    subscription_id      = "8f0829d1-a216-42ec-8609-b6c345b7bf4e"
  }
}