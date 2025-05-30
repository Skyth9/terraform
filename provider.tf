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
  subscription_id    = "80ea84e8-afce-4851-928a-9e2219724c69"
  client_id          = "3d9e9bd5-be9d-4eb3-8caa-877439cd88c3"
  client_secret      = "arm8Q~hJb5IhGTk~r23NLNKGNCqdWu2APmYZEcyh"
  tenant_id          = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
}