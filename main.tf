resource "azurerm_service_plan" "this" {
  name                = var.service_plan_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  os_type             = "Linux"
  sku_name            = var.service_plan_sku
}

resource "azurerm_linux_web_app" "this" {
  name                = var.web_app_name
  resource_group_name = azurerm_service_plan.this.resource_group_name
  location            = azurerm_service_plan.this.location
  service_plan_id     = azurerm_service_plan.this.id

  site_config {
    always_on = var.webapp_always_on == "F1" || var.webapp_always_on == "D1" || var.webapp_always_on == "SHARED" ? false : var.webapp_always_on
  }
}