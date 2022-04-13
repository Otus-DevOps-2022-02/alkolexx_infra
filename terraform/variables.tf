variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  default     = "ru-central1-a"
}
variable "service_account_key_file" {
  description = "key.json"
}
variable "bucket_name" {
  description = "Bucket name"
}
variable "bucket_key" {
  description = "Bucket key_id"
}
variable "bucket_secret" {
  description = "Bucket secret"
}