module "rg_dev" {
  source      = "../Modules/Resource_Group"
  rg_name     = "dev_rg"
  rg_location = "canada central"
}

module "rg_prod" {
  source      = "../Modules/Resource_Group"
  rg_name     = "prod_rg"
  rg_location = "canada central"
}

module "dev_log_analytics_workspace" {
  depends_on   = [module.rg_dev]
  source       = "../Modules/Log_Analytics_WorskSpace"
  lgw_name     = "dev-log-analytics-workspace"
  lgw_location = "canada central"
  lgw_rg_name  = "dev_rg"
}

module "prod_log_analytics_workspace" {
  depends_on   = [module.rg_prod]
  source       = "../Modules/Log_Analytics_WorskSpace"
  lgw_name     = "prod-log-analytics-workspace"
  lgw_location = "canada central"
  lgw_rg_name  = "prod_rg"
}