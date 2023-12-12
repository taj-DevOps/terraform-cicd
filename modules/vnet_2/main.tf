###############################  vnet-2 and subnet-2 #####################

resource "azurerm_virtual_network" "vnet_2" {
  name                = "${var.proj_name}-${var.environment}-${var.vnet_2_name}"
  address_space       = var.vnet_2_cidr
  location            = "${var.rg_location}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
}

resource "azurerm_subnet" "subnet_2" {
  name                 = "${var.proj_name}-${var.environment}-${var.subnet_2_name}"
  resource_group_name  = "${var.proj_name}-${var.environment}-${var.rg_name}"
  virtual_network_name = "${azurerm_virtual_network.vnet_2.name}"
  address_prefixes     = var.subnet_2_cidr

  depends_on = [ azurerm_virtual_network.vnet_2 ]
}

