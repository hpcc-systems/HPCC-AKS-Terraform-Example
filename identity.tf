resource "azurerm_user_assigned_identity" "default" {
  name                = "identity-${var.product_name}"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  tags                = var.tags
}

resource "azurerm_role_assignment" "aks-access-subnet" {
  principal_id         = azurerm_user_assigned_identity.default.principal_id
  role_definition_name = "Contributor"
  scope                = azurerm_subnet.aks-default.id
}