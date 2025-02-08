module "vm" {
  source              = "../../modules/vm"
  resource_group_name = "dev-resource-group"
  location           = "East US"
  vnet_name          = "dev-vnet"
  address_space      = ["10.0.0.0/16"]
  subnet_name        = "dev-subnet"
  subnet_prefix      = ["10.0.1.0/24"]
  vm_name            = "dev-vm"
  vm_size            = "Standard_DS1_v2"
  admin_username     = "adminuser"
  admin_password     = "AdminPassword123!"
}