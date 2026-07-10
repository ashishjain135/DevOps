resource_name = {
  rg1 = {
    name = "rgAshish1"
    location = "eastus"
  }
}

storage_account = {
  st1 = {
    name = "stashish1234"
    location = "eastus"
    resource_group_name = "azurerm_resource_group.rgAshish1[each.key].name"
    account_tier = "Standard"
    account_replication_type = "LRS"
  }
  
}