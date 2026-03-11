terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.4.0"

    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.22.0"
    }
  }

    backend "azurerm" {
    resource_group_name  = "demo-rg"
    storage_account_name = "demosa"
    container_name       = "demo-container"
    key                  = "demo-env-blob-demo-region.tfstate"
    use_azuread_auth     = true
  }
}


provider "azurerm" {
  subscription_id = "00000000-0000-0000-0000-000000000000" # DEMO-SUB-ID
  features {}
}

provider "azurerm" {
  features {}
  alias           = "thissub"
  subscription_id = "00000000-0000-0000-0000-000000000000" # DEMO-SUB-ID
}