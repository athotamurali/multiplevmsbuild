output "resource_group_name" {
  value = module.resource_group.rg_name
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "vm_ips" {
  value = module.vm.vm_ips
}
