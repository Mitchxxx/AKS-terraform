#!/bin/bash

RESOURCE_GROUP_NAME=remote
STORAGE_ACCOUNT_NAME=ibtLearning$RANDOM
CONTAINER_NAME=containertfstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location westeurope

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create a container account
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME