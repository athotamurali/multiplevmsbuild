terraform {
  backend "azurerm" {
    resource_group_name   = "terraform-backend-rg"
    storage_account_name  = "terraformstorage123"
    container_name        = "terraform-state"
    key                   = "terraform.tfstate"
  }
}
