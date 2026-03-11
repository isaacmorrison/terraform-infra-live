locals {
  tags = merge({
      automation    = var.automation
  })
  app_services = {
    "${var.app_svc_name}"  = { location = var.location, app_settings = var.app_settings, current_stack = "dotnet", dotnet_version = "v6.0"}
  }
}
#################
# resource Group Creation
#################
resource "azurerm_resource_group" "rg" {
    name              = var.resource_group_name
    location          = var.location
    tags              = local.tags
}
#################
# App Service Plan and App Service Creation
#################
module "service_plan" {
  source              = "git@github.com:terraform-modules.git//appService?ref=main"
  #source              = "./../../../terraform-modules/appService"
    providers = {
    azurerm.shared        = azurerm.shared
    }
  resource_group_name = azurerm_resource_group.rg.name
  app_plan_name       = var.app_plan_name
  location            = var.location

  product_line        = var.product_line
  pipeline            = var.pipeline
  automation          = var.automation

  os_type             = var.os_type
  sku_name            = var.sku_name
  
  ftps_state          = var.ftps_state
  identity_type       = var.identity_type
  https_only          = var.https_only
  retention_in_mb     = var.retention_in_mb
  retention_in_days   = var.retention_in_days

  msi_id              = var.msi_id

  app_services = local.app_services

}
