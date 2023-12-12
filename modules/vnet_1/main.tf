###############################  vnet-1 and subnet-1 #####################

resource "azurerm_virtual_network" "vnet_1" {
  name                = "${var.proj_name}-${var.environment}-${var.vnet_1_name}"
  address_space       = var.vnet_1_cidr
  location            = "${var.rg_location}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
}

resource "azurerm_subnet" "subnet_1" {
  name                 = "${var.proj_name}-${var.environment}-${var.subnet_1_name}"
  resource_group_name  = "${var.proj_name}-${var.environment}-${var.rg_name}"
  virtual_network_name = "${azurerm_virtual_network.vnet_1.name}"
  address_prefixes     = var.subnet_1_cidr

  depends_on = [ azurerm_virtual_network.vnet_1 ]
}


