output "password" {
  sensitive = true
  value = azurerm_key_vault_secret.secret.value
  description = "The password for logging in to the database."
}