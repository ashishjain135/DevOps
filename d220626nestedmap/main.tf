resource "azurerm_resource_group" "rgAshish1" {
  for_each = var.resource_name
  name = each.value.name
  location = each.value.location
}
                   

resource "azurerm_storage_account" "stAshish1" {
    for_each = var.storage_account
    name = each.value.name
    location = each.value.location
    resource_group_name = azurerm_resource_group.rgAshish1[each.value.rg_key].name
    #   resource_group_name = azurerm_resource_group.rgAshish1["rg1"].name //implicit dependency
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
}
