terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.64.0"
    }
  }
}
provider "azurerm" {
  # Configuration options 
  features {

  }
  subscription_id = "b01b4aae-7726-4c90-b24f-61e90e1ab9a0"
}
resource "azurerm_resource_group" "rg1" {
  name     = "ashish1306Storage"
  location = "West Europe"
}  