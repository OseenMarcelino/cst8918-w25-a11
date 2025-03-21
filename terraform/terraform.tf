terraform {
  required_version = "~> 1.5"

  backend "azurerm" {
    resource_group_name  = "<your-college-id>-Default-WestUS3-rg"
    storage_account_name = "<your-college-id>tfstorage"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}