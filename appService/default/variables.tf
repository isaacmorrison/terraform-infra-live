variable "product_line" {
  default    = ""
  description = "locals tags"
}
variable "pipeline" {
  default    = ""
  description = "locals tags"
}
variable "automation" {
  default    = ""
  description = "locals tags"
}
variable "app_plan_name" {
  default    = ""
  description = "Name of the app service plan"
}
variable "location" {
  default     = "westus"
  description = "The Azure location where all resources in this example should be created"
}
variable "resource_group_name" {
  default   = ""
  description = "name of the resource group"
}
variable "sku_tier" {
  default     = ""
  description = "premium, basic, standard"
}
variable "sku_size" {
  default     = ""
  description = "processing power"
}
variable "app_svc_name" {
  default     = ""
  description = "name of the web app service"
}
variable "private_dns_zone_ids" {
  type = list(string)
  default = []
  description = "private_dns_zone_ids"
}
variable "app_settings_applicationinsights_connection_string" {
  default = ""
  description = "app_settings_applicationinsights_connection_string"
}
variable "app_settings" {
    type = map(string)
    default = {}
}
variable "app_services" {
  description = "App Services"
  type = map(object({
    location               = string
    app_settings           = map(string)
    current_stack          = string
    dotnet_version         = string
  }))
  default = {}
}
variable "msi_id" {
  default     = ""
  description = "name of the web app service"
}
variable "vnet_int_subnet_name" {
  default     = ""
  description = "name of the web app service"
}
variable "int_vnet_name" {
  default     = ""
  description = "name of the web app service"
}
variable "int_vnet_rg" {
  default     = ""
  description = "name of the web app service"
}
variable "pe_vnet_name" {
  default     = ""
  description = "name of the web app service"
}
variable "pe_vnet_rg" {
  default     = ""
  description = "name of the web app service"
}
variable "private_dns_zone" {
  default     = ""
  description = "name of the web app service"
}
variable "private_dns_zone_rg" {
  default     = ""
  description = "name of the web app service"
}
variable "diags_name" {
  default     = ""
  description = "name of the web app service"
}
variable "diag_sa_name" {
  default     = ""
  description = "name of the web app service"
}
variable "diag_sa_rg_name" {
  default     = ""
  description = "name of the web app service"
}
variable "law_name" {
  default     = ""
  description = "name of the web app service"
}
variable "law_rg" {
  default     = ""
  description = "name of the web app service"
}
variable "capacity" {
  default     = ""
  description = "capacity"
}
variable "https_only" {
  default     = ""
}
variable "identity_type" {
  default     = ""
}
variable "ftps_state" {
  default     = ""
}
variable "retention_in_mb" {
  default     = ""
}
variable "retention_in_days" {
  default     = ""
}
variable "pe_subnet_name" {
  default     = ""
}
variable "private_dns_zone_group" {
  default     = ""
}
variable "os_type" {
  default     = ""
}
variable "sku_name" {
  default     = ""
}