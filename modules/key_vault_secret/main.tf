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


resource "random_password" "password" {
  count            = var.secret_value != null ? 0 : 1
  length           = var.length
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "azurerm_key_vault_secret" "secret" {
  lifecycle {
    precondition {
      condition = var.secret_value != null || var.length != null
      error_message = "If secret_value is not provided length of newly generated secret is required"
    }

     ignore_changes = [
      value
    ]
  }

  name         = var.name
  value        = var.secret_value != null ? var.secret_value : random_password.password[0].result
  key_vault_id = var.key_vault_id
}
