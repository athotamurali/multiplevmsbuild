output "vm_ids" {
  value = azurerm_linux_virtual_machine.vm[*].id
}

output "vm_private_ips" {
  value = azurerm_linux_virtual_machine.vm[*].private_ip_address
}
