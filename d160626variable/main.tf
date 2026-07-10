//create resource group using variable
//CLI method

//variable CLI method here var.rg_name is used to call the variable defined in variable.tf file. 
 
resource "azurerm_resource_group" "rg1" {
    name = var.rg_name
    location = "Central India"
}