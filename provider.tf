//variable "client_secret" {
//}

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
  client_id          = "3d9e9bd5-be9d-4eb3-8caa-877439cd88c3"
  client_secret      = 
  tenant_id          = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
}
