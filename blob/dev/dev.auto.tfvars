location            = "West US"                #location for all resources
resource_group_name = "aya-dev-wus-sa-01_rg"  #ResourceGroup name to be created

product_line                  = "Aya"
pipeline                      = "ayadevwussa01"
automation                    = "terraform"

################################
# Storage Account
################################
storage_account_name        = "ayadevwussa01"
account_tier                = "Standard"
account_replication_type    = "GRS"
access_tier                 = "Hot"
enable_https_traffic_only   = "true"
min_tls_version             = "TLS1_2"
allow_blob_public_access    = false

################################
# Containers
################################
containers_list = [
    { name = "application-logs", access_type = "private" }, 
    { name = "candidate", access_type = "private" }, 
    { name = "clients", access_type = "private" },
    { name = "compliance", access_type = "private" }, 
    { name = "corporate-directory", access_type = "private" }, 
    { name = "email-attachments", access_type = "private" },
    { name = "email-templates", access_type = "private" }, 
    { name = "facility-contract-documents", access_type = "private" }, 
    { name = "facility-specific-documents", access_type = "private" },
    { name = "facilitypayrollfiles", access_type = "private" }, 
    { name = "facilityuserguide", access_type = "private" }, 
    { name = "global", access_type = "private" },
    { name = "health-requests", access_type = "private" }, 
    { name = "housing", access_type = "private" }, 
    { name = "invoices", access_type = "private" },
    { name = "keys", access_type = "private" }, 
    { name = "offers", access_type = "private" }, 
    { name = "performance-evaluations", access_type = "private" },
    { name = "recruiting", access_type = "private" }, 
    { name = "resumes", access_type = "private" }, 
    { name = "reverse-invoices", access_type = "private" }, 
    { name = "shipping-requests", access_type = "private" }, 
    { name = "temp", access_type = "private" }, 
    { name = "timecards", access_type = "private" },
    { name = "timekeepingsystems", access_type = "private" }, 
    { name = "travelx", access_type = "private" }, 
    { name = "vendor-forms", access_type = "private" }, 
    { name = "vendors", access_type = "private" }, 
    { name = "workorderconfirmations", access_type = "private" }
  ]

file_shares = [

]

tables      = [

]

queues      = [
    
]

################################
# Private Endpoint
################################
subnet_id                           = "/subscriptions/bb216987-2fb9-49be-802e-86993298518d/resourceGroups/aya-dev-spoke-vnet-rg-wus-01/providers/Microsoft.Network/virtualNetworks/aya-dev-spoke-vnet-wus-01/subnets/pe-subnet"
pe_name                             = "aya-storage-pe"

private_dns_zone_group              = "privatednszonegroup"
private_dns_zone_ids                = ["/subscriptions/38e352cb-70b6-4b60-87d2-557f4f7829f7/resourceGroups/wusayainfrahub/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]

private_service_connection_name     = "aya_storage_psc"

################################
# diagnostics
################################
/*diag_sa_name                    = "nextgen2diags"
diag_sa_rg_name                 = "wusayainfrahub"
*/

################################
# Subnets
################################
subnet_ids = ["/subscriptions/bb216987-2fb9-49be-802e-86993298518d/resourceGroups/aya-dev-spoke-vnet-rg-wus-01/providers/Microsoft.Network/virtualNetworks/aya-dev-spoke-vnet-wus-01/subnets/CoreApiVnetInt_sub", 
              "/subscriptions/bb216987-2fb9-49be-802e-86993298518d/resourceGroups/aya-dev-spoke-vnet-rg-wus-01/providers/Microsoft.Network/virtualNetworks/aya-dev-spoke-vnet-wus-01/subnets/ConnectVnetInt_subnet",
              "/subscriptions/bb216987-2fb9-49be-802e-86993298518d/resourceGroups/aya-dev-spoke-vnet-rg-wus-01/providers/Microsoft.Network/virtualNetworks/aya-dev-spoke-vnet-wus-01/subnets/MyAyaVnetInt_subnet",
              "/subscriptions/bb216987-2fb9-49be-802e-86993298518d/resourceGroups/aya-dev-spoke-vnet-rg-wus-01/providers/Microsoft.Network/virtualNetworks/aya-dev-spoke-vnet-wus-01/subnets/LocumsVnetInt_subnet",
              "/subscriptions/bb216987-2fb9-49be-802e-86993298518d/resourceGroups/aya-dev-spoke-vnet-rg-wus-01/providers/Microsoft.Network/virtualNetworks/aya-dev-spoke-vnet-wus-01/subnets/NovaVnetInt_sub"]