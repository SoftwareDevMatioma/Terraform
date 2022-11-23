variable "name" {
  description = "name for the keyvault"
  type        = string
}

variable "location" {
  description = "location for the keyvault hosting"
  type        = string
}

variable "resource_group_name" {
  description = "resourge group name where to place the keyvault"
  type        = string
}

variable "rbac_authorization" {
   type = bool
   default = true
}

variable "sku_name" {
  description = "name of the SKU plan for the keyvault"
}
