provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_storage_bucket" "alkolexx-bucket" {
  bucket        = var.bucket_name
  access_key    = var.bucket_key
  secret_key    = var.bucket_secret
  force_destroy = "true"
}