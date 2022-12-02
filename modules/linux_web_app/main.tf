# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}



resource "azurerm_linux_web_app" "web_app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = var.always_on
    app_command_line = var.startup_command

    application_stack {
      dotnet_version = var.application_stack.dotnet_version
      node_version = var.application_stack.node_version
    }
  }
  zip_deploy_file = var.zip_deploy_file

  dynamic "identity"{
    for_each  = var.enable_managed_identity == true ? [1] : [0]
    content{
      type = "SystemAssigned"
    }
  }

  app_settings = var.app_settings
}



