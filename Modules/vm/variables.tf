variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group_name" {}
variable "location" {}
variable "vm_name" {}
variable "vm_count" { default = 1 }
variable "vm_size" { default = "Standard_B2s" }
variable "admin_username" {}
variable "subnet_id" {}
