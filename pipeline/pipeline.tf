terraform {
  backend "azurerm" {}
}

module "tf" {
  source                  = "../module"
  resource_group_name     = var.resource_group_name
  oms_resource_group_name = var.oms_resource_group_name
  oms_name                = var.oms_name
}