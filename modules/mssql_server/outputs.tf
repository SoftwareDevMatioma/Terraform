output "id" {
  value = azurerm_mssql_server.mssql_server.id
}

output "name" {
  value = var.name
}

output "login" {
  value     = var.admin_login
  sensitive = true
}

output "password" {
  value     = var.admin_password
  sensitive = true
}
