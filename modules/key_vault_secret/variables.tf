
variable "name" {
  description = "name for the keyvault"
  type        = string
}

variable "key_vault_id" {
  description = "key_vault_id where the secret will be palced"
  type        = string
}

variable "secret_value" {
  type      = string
  default   = null
  sensitive = true
}

variable "use_special_caracters" {
  description = "does generated password use special characters"
  type =  bool
  default = true
}

variable "length" {
  description = "length of the generated password"
  type        = string
  default = null
}
