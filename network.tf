resource "azurerm_virtual_network" "aksvnet" {
  name                = "vnet-${var.product_name}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/8"]
}

resource "azurerm_subnet" "aks-default" {
  name                 = "aks-default-subnet"
  virtual_network_name = azurerm_virtual_network.aksvnet.name
  resource_group_name  = azurerm_resource_group.main.name
  address_prefixes     = ["10.240.0.0/16"]
  service_endpoints = ["Microsoft.Storage"]
}



