# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "azurerm_storage_container" "container" {
  name                  = var.name
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}