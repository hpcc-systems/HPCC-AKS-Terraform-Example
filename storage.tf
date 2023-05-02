resource "azurerm_storage_account" "storage_account" {
  name                     = "sa8${var.product_name}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     =  var.tags
  
  allow_nested_items_to_be_public = false
  shared_access_key_enabled = true

  network_rules {
    default_action             = "Deny"
    virtual_network_subnet_ids = [azurerm_subnet.aks-default.id]
    bypass = [ "AzureServices" ]
    ip_rules = ["107.213.192.91"]
  }
}

resource "azurerm_storage_share" "dali" {
  name                 = var.dali_share_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = 50 
  enabled_protocol     = "SMB"  
}

resource "azurerm_storage_share" "sasha" {
  name                 = var.sasha_share_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = 50 
  enabled_protocol     = "SMB"  
}

resource "azurerm_storage_share" "dll" {
  name                 = var.dll_share_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = 50 
  enabled_protocol     = "SMB"  
}

resource "azurerm_storage_share" "data" {
  name                 = var.data_share_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = 50 
  enabled_protocol     = "SMB"  
}

resource "azurerm_storage_share" "mydropzone" {
  name                 = var.mydropzone_share_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = 50 
  enabled_protocol     = "SMB"  
}
