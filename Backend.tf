terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "terraformstateaccount"
    container_name       = "tfstate"
    key                 = "terraform.tfstate"
  }
}
