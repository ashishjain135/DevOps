terraform {
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.77.0"
        }
    }
}

provider "azurerm"{
    features{}
    subscription_id = "b01b4aae-7726-4c90-b24f-61e90e1ab9a0"
}