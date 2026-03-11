# Service: Storage Account
# PRE-REQ's = VNET subnets for VNET integration and Private Endpoint

locals {
  tags = merge({
    product_line            = var.product_line
    pipeline                = var.pipeline
    automation              = var.automation
  })
}
#######################
# Create Resource Group
########################
resource "azurerm_resource_group" "this" {
  name                  = var.resource_group_name
  location              = var.location
}

#######################
# Create Storage Account
########################

module "module-blob" {
    source  = "git@github.com:terraform/terraform-modules.git//blob?ref=main"
    #source  = "./../../../aya-terraform-modules/blob"
        providers = {
        azurerm.thissub             = azurerm.thissub
        azurerm.sharedsvcsub        = azurerm.sharedsvcsub # to access diag storge account
        azurerm.entsharedsvcsub     = azurerm.entsharedsvcsub # to registar Private DNS entry
      }

    ##Storage Account  
    storage_account_name        = var.storage_account_name
    resource_group_name         = azurerm_resource_group.this.name
    location                    = var.location
    account_tier                = var.account_tier
    account_replication_type    = var.account_replication_type
    access_tier                 = var.access_tier
    enable_https_traffic_only   = var.enable_https_traffic_only
    min_tls_version             = var.min_tls_version
    allow_blob_public_access    = var.allow_blob_public_access

    ##Containers
    containers_list             = var.containers_list
    file_shares                 = var.file_shares
    tables                      = var.tables
    queues                      = var.queues

    ##Private Endpoint
    subnet_id                       = var.subnet_id
    pe_name                         = var.pe_name

    private_dns_zone_group          = var.private_dns_zone_group
    private_dns_zone_ids            = var.private_dns_zone_ids

    private_service_connection_name = var.private_service_connection_name
    /*
    ##Log Analytics
    diag_sa_name                    = var.diag_sa_name
    diag_sa_rg_name                 = var.diag_sa_rg_name
    */

    ##Subnet IDs
    subnet_ids                  = var.subnet_ids

}
