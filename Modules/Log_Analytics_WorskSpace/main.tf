resource "azurerm_log_analytics_workspace" "lgw" {
  name                = var.lgw_name
  location            = var.lgw_location
  resource_group_name = var.lgw_rg_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

