provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location           = var.location
}

module "network" {
  source              = "./modules/network"
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
  location            = var.location
  resource_group_name = module.resource_group.rg_name
}

module "vm" {
  source              = "./modules/vm"
  env                 = var.env
  vm_count            = var.vm_count
  resource_group_name = module.resource_group.rg_name
  location            = var.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
}
