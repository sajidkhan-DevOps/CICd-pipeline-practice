rg = {
  rg1 = {
    name     = "rg-test"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-test"
    resource_group_name = "rg-test"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "subnet-frontend"
    resource_group_name  = "rg-test"
    virtual_network_name = "vnet-test"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet-backend"
    resource_group_name  = "rg-test"
    virtual_network_name = "vnet-test"
    address_prefixes     = ["10.0.2.0/24"]
  }
}