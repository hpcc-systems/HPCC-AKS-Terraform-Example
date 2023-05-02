resource "kubernetes_secret" "hpcc-storage-auth" {
  metadata {
    name = var.kubernetes_storage_secret_name
    namespace = var.hpcc_aks_namespace
  }

  

  data = {
    azurestorageaccountname    = azurerm_storage_account.storage_account.name
    azurestorageaccountkey     = azurerm_storage_account.storage_account.primary_access_key
  }

  depends_on = [
    azurerm_storage_account.storage_account
  ]
}
