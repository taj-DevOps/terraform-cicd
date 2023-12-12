################ public_ip_1  #############
resource "azurerm_public_ip" "pip_1" {
  name                = "${var.proj_name}-${var.environment}-${var.pip_1_name_prefix}"
  location            = "${var.rg_location}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
  allocation_method   = "Static"
}

################ public_ip_2  #############
resource "azurerm_public_ip" "pip_2" {
  name                = "${var.proj_name}-${var.environment}-${var.pip_2_name_prefix}"
  location            = "${var.rg_location}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
  allocation_method   = "Static"
}
