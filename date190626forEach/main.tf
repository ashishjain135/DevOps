resource "azurerm_resource_group" "rg"{
    for_each = var.ashish
    name = each.key
    location = each.value
}