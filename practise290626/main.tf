resource "azurerm_resource_group" "rgAshish12" {
    for_each = var.resource_name
    name = each.value.name
    location = each.value.location
}

resource "azurerm_storage_account""stAshish12"{
    for_each = var.storage_account
    name = each.value.name
    location = each.value.location
    resource_group_name = azurerm_resource_group.rgAshish12["rg1"].name
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
}