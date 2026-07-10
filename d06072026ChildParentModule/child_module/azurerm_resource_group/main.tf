variable "jainrg" {
  type = map(any)
}

resource "azurerm_resource_group" "rg" {
  for_each = var.jainrg
  name       = each.value.name
  location   = each.value.location
}
