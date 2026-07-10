ashishrg = {
  rg1 = {
  name="rg-modi"
  location="eastus"
  }
}


ashishVnet = {
  vnet1 = {
  name="vnet-dhondhu-dev"
  location="eastus"
  resource_group_name="rg-modi"
  address_space=["10.0.0.0/16"]
  }
}


ashish_subnet = {
  snet1 = {
  name="frontend-subnet"
  resource_group_name="rg-modi"
  virtual_network_name="vnet-dhondhu-dev"
  address_prefixes=["10.0.1.0/24"]
  }
}