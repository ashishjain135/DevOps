// This file configures the backend for Terraform to use Azure Storage for storing the state file. It specifies the resource group, storage account, container, and key for the state file.

// The backend configuration allows Terraform to store the state file remotely in Azure Storage, which is useful for collaboration and ensuring that the state is not lost or corrupted when working with multiple team members.

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-ashish1406"
    storage_account_name = "stashish1406"
    container_name       = "ctashish1406"
    key                  = "terraform.tfstate"
  }
}