variable "name" {
  description = "name for the storage account"
  type        = string
}

variable "storage_account_name" {
  description = "resourge group name where to place the storage account"
  type        = string
}

variable "storage_account_container" {
  description = "resourge group name where to place the storage account"
  type        = string
}

variable "type" {
  description = "Possible values are Append, Block or Page"
  type        = string
  default     = "Block"
}

variable "file_location" {
  description = "path to the zip file"
  type        = string
  
}
