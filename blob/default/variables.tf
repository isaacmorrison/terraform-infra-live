variable "location" {
  default = ""
}
variable "resource_group_name" {
  default = ""
}
variable "storage_account_name" {
  default = ""
}
variable "account_tier" {
  default = ""
}
variable "account_replication_type" {
  default = ""
}
variable "access_tier" {
  default = ""
}
variable "enable_https_traffic_only" {
  default = ""
}
variable "min_tls_version" {
  default = ""
}
variable "allow_blob_public_access" {
  default = ""
}
variable "containers_list" {
    default = {}
    description = "containers_list"
}
variable "file_shares" {
    default = {}
    description = "file_shares"
}
variable "tables" {
    default = {}
    description = "tables"
}
variable "queues" {
    default = {}
    description = "queues"
}
variable "subnet_id" {
    default = {}
    description = "queues"
}
variable "pe_name" {
    default = {}
    description = "queues"
}
variable "private_service_connection_name" {
    default = {}
    description = "queues"
}
variable "diag_sa_name" {
  default     = ""
  description = "name of the web app service"
}
variable "diag_sa_rg_name" {
  default     = ""
  description = "name of the web app service"
}
variable "subnet_ids"{
  type    = list(string)
  default = [""]
}
variable "private_dns_zone_group" {
    default = {}
    description = ""
}
variable "private_dns_zone_ids" {
    type    = list(string)
}
variable "product_line" {
  default     = ""
}
variable "pipeline" {
  default     = ""
}
variable "automation" {
  default     = ""
}