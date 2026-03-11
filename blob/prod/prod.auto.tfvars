location            = "Demo Region"                #location for all resources
resource_group_name = "demo-rg"  #ResourceGroup name to be created

product_line                  = "Demo"
pipeline                      = "demo-pipeline"
automation                    = "terraform"

################################
# Storage Account
################################
storage_account_name        = "demosa"
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
    { name = "demo-logs", access_type = "private" }, 
    { name = "demo-data", access_type = "private" }, 
    { name = "demo-clients", access_type = "private" },
    { name = "demo-temp", access_type = "private" }
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
subnet_id                           = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet"
pe_name                             = "demo-storage-pe"

private_dns_zone_group              = "demo-dnszonegroup"
private_dns_zone_ids                = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]

private_service_connection_name     = "demo_storage_psc"

################################
# diagnostics
################################
/*diag_sa_name                    = "nextgen2diags"
diag_sa_rg_name                 = "wusayainfrahub"
*/

################################
# Subnets
################################
subnet_ids = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet1", 
              "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet2",
              "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet3",
              "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet4",
              "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet5"]