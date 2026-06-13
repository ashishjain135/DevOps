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
  subscription_id = "8aefe573-fc01-44d6-8748-4b48ba2c562e"
}
resource "azurerm_resource_group" "rg1" {
  name     = "ashishrg"
  location = "West Europe"
}  