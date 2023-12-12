resource "azurerm_resource_group" "rg" {
  name     = "${var.proj_name}-${var.environment}-${var.rg_name}"
  location = "${var.rg_location}"
}

