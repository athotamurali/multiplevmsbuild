module "vms" {
  source               = "./modules/vm"
  subscription_id      = var.subscription_id
  client_id            = var.client_id
  client_secret        = var.client_secret
  tenant_id            = var.tenant_id
  resource_group_name  = var.resource_group_name
  location             = var.location
  vm_name              = var.vm_name
  vm_count             = var.vm_count
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  subnet_id            = var.subnet_id
}
