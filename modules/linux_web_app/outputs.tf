output "id" {
  value = azurerm_linux_web_app.web_app.id
}

output "principal_id" {
  value = azurerm_linux_web_app.web_app.identity[0].principal_id
}

output "hostname" {
  value = "https://${azurerm_linux_web_app.web_app.default_hostname}"
}