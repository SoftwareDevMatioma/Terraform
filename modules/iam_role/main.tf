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


data "azurerm_client_config" "client" {
}


resource "random_uuid" "uuid" {
  for_each = { for ra in var.role_assigments : ra.name => ra }
}

resource "azurerm_role_assignment" "azurerm_role" {
  for_each = { for ra in var.role_assigments : ra.name => ra }

  name                 = random_uuid.uuid[each.value.name].result
  scope                = each.value.scope_id
  role_definition_name = each.value.role_name
  principal_id         = each.value.principal_id
}
