resource "azurerm_resource_group" "main" {
  name     = "rg_${var.product_name}"
  location = "East US"
  tags     = var.tags
}


