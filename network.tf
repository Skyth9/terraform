# Virtual Network
# HUB
resource "azurerm_virtual_network" "hub" {
  name                = "hub-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.RG
}

# Subnet 1
resource "azurerm_subnet" "hub-fw" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = var.RG
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["10.0.0.0/26"]
}

# Subnet 2
resource "azurerm_subnet" "hub-appgw1" {
  name                 = "appgw1"
  resource_group_name  = var.RG
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["10.0.0.64/26"]
}

# Subnet 3
resource "azurerm_subnet" "hub-fw-mgmt" {
  name                 = "AzureFirewallManagementSubnet"
  resource_group_name  = var.RG
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["10.0.0.128/26"]
}

# Subnet 4
resource "azurerm_subnet" "hub-vpn" {
  name                 = "GatewaySubnet"
  resource_group_name  = var.RG
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["10.0.0.192/26"]
}

# Spoke
resource "azurerm_virtual_network" "spoke1" {
  name                = "spoke1-vnet"
  address_space       = ["172.20.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.RG
}

# Subnet 1
resource "azurerm_subnet" "spoke1-lan" {
  name                 = "lan"
  resource_group_name  = var.RG
  virtual_network_name = azurerm_virtual_network.spoke1.name
  address_prefixes     = ["172.20.0.0/24"]
}

# Subnet 1
resource "azurerm_subnet" "spoke1-web" {
  name                 = "web"
  resource_group_name  = var.RG
  virtual_network_name = azurerm_virtual_network.spoke1.name
  address_prefixes     = ["172.20.1.0/24"]
}

# Peering Hub to Spoke
resource "azurerm_virtual_network_peering" "peering1" {
  name                      = "HUBtoSPOKE1"
  resource_group_name       = var.RG
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.spoke1.id
}

resource "azurerm_virtual_network_peering" "peering2" {
  name                      = "SPOKE1toHUBt"
  resource_group_name       = var.RG
  virtual_network_name      = azurerm_virtual_network.spoke1.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id
}