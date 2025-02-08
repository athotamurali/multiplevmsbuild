module "vm" {
  source              = "../../modules/vm"
  resource_group_name = "prod-resource-group"
  location           = "East US"
  vnet_name          = "prod-vnet"
  address_space      = ["10.0.0.0/16"]
  subnet_name        = "prod-subnet"
  subnet_prefix      = ["10.0.1.0/24"]
  vm_name            = "prod-vm"
  vm_size            = "Standard_DS1_v2"
  admin_username     = "adminuser"
  admin_password     = "AdminPassword123!"
}