
resource "azurerm_storage_account" "storage1" {
  name                     = "ashish1306sa2026"
  resource_group_name      = "ashish1306"
  location                 = "Central India"

  account_tier             = "Standard"
  account_replication_type = "LRS"
}