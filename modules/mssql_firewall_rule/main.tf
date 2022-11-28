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

resource "azurerm_mssql_firewall_rule" "rule" {
  name             = var.name
  server_id        = var.server_id
  start_ip_address = var.start_ip_address
  end_ip_address   = var.end_ip_address
}