#!/bin/bash

RESOURCE_GROUP_NAME=cfi-tfs-rg-name #tfstate
STORAGE_ACCOUNT_NAME=cfitfsstoragename #tfstate713   #Unique Name
CONTAINER_NAME=cfi-tfs-container-name #tfstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location eastus

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME

# az ad sp create-for-rbac --name cfiSvcPrincipal --role reader --scopes /subscriptions/8f0829d1-a216-42ec-8609-b6c345b7bf4e

