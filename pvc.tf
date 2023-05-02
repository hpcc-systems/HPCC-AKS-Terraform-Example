resource "kubernetes_persistent_volume_claim" "dali" {
  metadata {
    name = "dali"
    namespace = var.hpcc_aks_namespace
  }
  spec {
    access_modes = ["ReadWriteMany"]
    storage_class_name = "azurefile-csi"
    resources {
      requests = {
        storage = "5Gi"
      }
    }
    volume_name = "${kubernetes_persistent_volume.dali.metadata.0.name}"
  }
}

resource "kubernetes_persistent_volume_claim" "sasha" {
  metadata {
    name = "sasha"
    namespace = var.hpcc_aks_namespace
  }
  spec {
    access_modes = ["ReadWriteMany"]
    storage_class_name = "azurefile-csi"
    resources {
      requests = {
        storage = "5Gi"
      }
    }
    volume_name = "${kubernetes_persistent_volume.sasha.metadata.0.name}"
  }
}

resource "kubernetes_persistent_volume_claim" "data" {
  metadata {
    name = "data"
    namespace = var.hpcc_aks_namespace
  }
  spec {
    access_modes = ["ReadWriteMany"]
    storage_class_name = "azurefile-csi"
    resources {
      requests = {
        storage = "5Gi"
      }
    }
    volume_name = "${kubernetes_persistent_volume.data.metadata.0.name}"
  }
}

resource "kubernetes_persistent_volume_claim" "dll" {
  metadata {
    name = "dll"
    namespace = var.hpcc_aks_namespace
  }
  spec {
    access_modes = ["ReadWriteMany"]
    storage_class_name = "azurefile-csi"
    resources {
      requests = {
        storage = "5Gi"
      }
    }
    volume_name = "${kubernetes_persistent_volume.dll.metadata.0.name}"
  }
}

resource "kubernetes_persistent_volume_claim" "mydropzone" {
  metadata {
    name = "mydropzone"
    namespace = var.hpcc_aks_namespace
  }
  spec {
    access_modes = ["ReadWriteMany"]
    storage_class_name = "azurefile-csi"
    resources {
      requests = {
        storage = "5Gi"
      }
    }
    volume_name = "${kubernetes_persistent_volume.mydropzone.metadata.0.name}"
  }
}