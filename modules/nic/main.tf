############################# network interface 1 #################################
resource "azurerm_network_interface" "nic_1" {
  name                = "${var.proj_name}-${var.environment}-${var.nic_1_name_prefix}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
  location            = "${var.rg_location}"

  ip_configuration {
    name                          = "${var.ip_config_1_name}"
    subnet_id                     = "${var.subnet_1_id}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "${var.pip_1_id}"
  }
}

############################# network interface 2 #################################
resource "azurerm_network_interface" "nic_2" {
  name                = "${var.proj_name}-${var.environment}-${var.nic_2_name_prefix}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
  location            = "${var.rg_location}"

  ip_configuration {
    name                          = "${var.ip_config_2_name}"
    subnet_id                     = "${var.subnet_2_id}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "${var.pip_2_id}"
  }
}