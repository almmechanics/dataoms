provider "azurerm" {
  version                    = "=2.14.0"
  skip_provider_registration = true
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "deploy" {
  name = var.resource_group_name
}

data "azurerm_log_analytics_workspace" "oms" {
  name                = var.oms_name
  resource_group_name = var.oms_resource_group_name
}

data "local_file" "oms_analytics" {
  filename = "${path.module}/arm/oms_analytics.json"
}
