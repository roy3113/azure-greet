resource "azurerm_container_registry" "acr" {
  name = var.acr_name
  resource_group_name = var.resource_group_name
  location = var.azure_region
  sku = "Standard"
  anonymous_pull_enabled = true
  admin_enabled = true
}
