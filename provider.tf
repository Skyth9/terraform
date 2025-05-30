terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
  subscription_id    = "0cfe2870-d256-4119-b0a3-16293ac11bdc"
  client_id          = "c1626f24-bf57-4f50-aa5e-10d1aa1180bf"
  client_secret      = "X2i8Q~a0nkHAmRnqNKDipG_CdtLaazQOoBJ3YczH"
  tenant_id          = ""
}