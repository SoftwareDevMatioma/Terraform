variable "name" {
  description = "name for the service plan"
  type        = string
}

variable "location" {
  description = "location for the service plan hosting"
  type        = string
}

variable "resource_group_name" {
  description = "resourge group name where to place the app service plan"
  type        = string
}

variable "os_type" {
  description = "the type of the Appservice OS"
  type =  string
}

variable "sku_name" {
  description = "sku for the service plan"
  type = string
}