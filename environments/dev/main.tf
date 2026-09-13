module "resource_group" {
  source         = "../../modules/azurerm_resource_group"
  resource_group = var.rg
}

module "virtual_network" {
  depends_on       = [module.resource_group]
  source           = "../../modules/azurerm_virtual_network"
  virtual_networks = var.vnets
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}