variable "tags" {
  description = "tags to be applied to resources"
  type        = map(string)
  default     = {
    owner              = "John Smith"
    owner_email        = "John.Smith@acme.com"   
  }
}

variable "product_name" {
  type = string
  default = "cyberhpccsample"
}

variable "kubernetes_storage_secret_name" {
  type = string
  default = "hpcc-storage-auth"
}

variable "dali_share_name" {
  type = string
  default = "dali"
}

variable "sasha_share_name" {
  type = string
  default = "sasha"
}

variable "dll_share_name" {
  type = string
  default = "dll"
}

variable "data_share_name" {
  type = string
  default = "data"
}

variable "mydropzone_share_name" {
  type = string
  default = "mydropzone"
}

variable "hpcc_aks_namespace" {
  type = string
  default = "default"
}
