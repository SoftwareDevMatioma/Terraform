output "id" {
  value = azurerm_linux_web_app.web_app.id
}

output "hostname" {
  value = "https://${azurerm_linux_web_app.web_app.default_hostname}"
}