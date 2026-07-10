module "resource_group" {
  source = "../../child_module/azurerm_resource_group"

  jainrg = var.ashishrg
}

module "virtual_network"{
    depends_on = [module.resource_group]
    source = "../../child_module/azurerm_virtual_network"
    jainVnet = var.ashishVnet
}

module "subnet" {
    depends_on = [module.virtual_network]
    source = "../../child_module/azurerm_subnet"
    jainSnet = var.ashish_subnet
}