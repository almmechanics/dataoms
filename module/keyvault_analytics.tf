locals {
  keyvault_oms_product    = "KeyVaultAnalytics"
  keyvault_analytics_name = format("%s(%s)", local.keyvault_oms_product, var.oms_name)
}


resource "azurerm_template_deployment" "keyvault_analytics" {
  name                = local.keyvault_analytics_name
  resource_group_name = data.azurerm_resource_group.deploy.name
  template_body       = data.local_file.oms_analytics.content
  deployment_mode     = "Incremental"

  parameters = {
    Name        = local.keyvault_analytics_name
    WorkspaceId = data.azurerm_log_analytics_workspace.oms.id
    OMSProduct  = local.keyvault_oms_product
  }
}