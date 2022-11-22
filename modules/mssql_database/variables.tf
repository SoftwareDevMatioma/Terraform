variable "name" {
  description = "name for the storage account"
  type        = string
}

variable "mssql_server_id" {
  description = "id of msSQL server where the db will be placed"
  type        = string
}

variable "max_size_gb" {
  description = "max size of a database"
  type = number
}

variable "sku_name" {
  description = "sku name"
  type  = string
}