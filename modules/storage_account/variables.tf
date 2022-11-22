variable "name" {
  description = "name for the storage account"
  type        = string
}

variable "location" {
  description = "location for the storage account hosting"
  type        = string
}

variable "resource_group_name" {
  description = "resourge group name where to place the storage account"
  type        = string
}

variable "account_tier" {
  description = "account tier of the storage account"
  type        = string
}

variable "replication_type" {
  description = "storage account replication type"
  type        = string
}

