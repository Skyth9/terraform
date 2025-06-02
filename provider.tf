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
  subscription_id    = "2213e8b1-dbc7-4d54-8aff-b5e315df5e5b"
  client_id          = "8c0a29ed-dac5-4209-9968-6d6c415bb5b7"
  client_secret      = "ZgG8Q~5Bpm-ZStlNtrcRCP5e2JCWidxpD_moTaJb"
  tenant_id          = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
}
