// This file defines the resources for the Azure Resource Group and Storage Account, with an implicit dependency between them.

//what is implicit dependency?
//Implicit dependency is when one resource references another resource, creating a natural dependency between them. In this case, the storage account resource references the resource group resource, so Terraform automatically understands that the storage account depends on the resource group being created first.

resource "azurerm_resource_group" "rg_block" {
  name = "rg-ashish1406"
  location = "West Europe"
}

resource "azurerm_storage_account" "st_block" {
  name                     = "stashish1406"
  //implicit dependency on resource group
  resource_group_name      = azurerm_resource_group.rg_block.name
  location                 = azurerm_resource_group.rg_block.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}