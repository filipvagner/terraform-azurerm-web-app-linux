output "service_plan_id" {
  description = "App service plan ID"
  value       = azurerm_service_plan.this.id
}

output "web_app_id" {
    description = "Web application ID"
    value = azurerm_linux_web_app.this.id
}