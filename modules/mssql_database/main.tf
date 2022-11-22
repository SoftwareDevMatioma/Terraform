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

resource "azurerm_mssql_database" "test" {
  name           = var.name
  server_id      = var.mssql_server_id
  max_size_gb    = var.max_size_gb
  sku_name       = var.sku_name
}