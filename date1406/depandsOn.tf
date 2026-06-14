// This file defines the resources for the Azure Resource Group and Storage Account, with an explicit dependency between them.

//what is explicit dependency?
//Explicit dependency is when you explicitly specify that one resource depends on another resource using the "depends_on" argument. This is useful when there is no implicit dependency between the resources, but you want to ensure that one resource is created before the other.



resource "azurerm_resource_group" "rg_block1" {
  name = "rg1-ashish1406"
  location = "West Europe"
}

resource "azurerm_storage_account" "st_block1" {
  name                     = "st1ashish1406"
  depends_on = [ azurerm_resource_group.rg_block1 ]
  //explicit dependency on resource group
  resource_group_name      = azurerm_resource_group.rg_block1.name
  location                 = azurerm_resource_group.rg_block1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}