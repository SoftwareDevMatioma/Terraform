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

variable "server_version" {
  description = "mssql server version 2.0 or 12.0"
  type        = string
}

variable "admin_login" {
  description = "mssql server login"
  type =  string
  sensitive = true
}

variable "admin_password" {
  description = "mssql server password"
  type =  string
  sensitive = true
}