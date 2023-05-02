resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-${var.product_name}"
  resource_group_name   = azurerm_resource_group.main.name
  location              = azurerm_resource_group.main.location
  dns_prefix          = "hpcc-aks"


  default_node_pool {
    name              = "systempool"
    node_count        = 2
    max_pods          = 20
    vm_size           = "Standard_D2_v2"

    vnet_subnet_id = azurerm_subnet.aks-default.id
    only_critical_addons_enabled =  true
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.default.id]
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }

  
}


resource "azurerm_kubernetes_cluster_node_pool" "hpccpool" {
  enable_auto_scaling   = true
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  max_count             = 2
  min_count             = 1
  max_pods              = 20
  mode                  = "User"
  name                  = "hpccpool"
  os_type               = "Linux" 
  vm_size               = "Standard_DS2_v2"

  vnet_subnet_id        = azurerm_subnet.aks-default.id
}


