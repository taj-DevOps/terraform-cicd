data "azurerm_key_vault" "keyvault" {
  name = "${var.keyvault_name}"
  resource_group_name = "${var.keyvault_rg}"
}
 
data "azurerm_key_vault_secret" "admin_username" {
  name = "${var.admin_username_secret}"
  key_vault_id = "${data.azurerm_key_vault.keyvault.id}"
}

data "azurerm_key_vault_secret" "admin_password" {
  name= "${var.admin_password_secret}"
  key_vault_id = "${data.azurerm_key_vault.keyvault.id}"
}

########################################## linux vitual machies  #####################
resource "azurerm_linux_virtual_machine" "linux_vm" {
  name                = "${var.proj_name}-${var.linux_vm_name}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
  location            = "${var.rg_location}"
  size                = "${var.linux_vm_sizes[0]}"
  admin_username      = "${data.azurerm_key_vault_secret.admin_username.value}"
  admin_password      = "${data.azurerm_key_vault_secret.admin_password.value}" 

  disable_password_authentication = false
  network_interface_ids = [var.nic_2_id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  tags = {
    environment = "${var.environment}"
  }
}


################################ windows virtual machine  ######################
resource "azurerm_windows_virtual_machine" "windows_vm" {
  name                = "${var.proj_name}-${var.windows_vm_name}"
  resource_group_name = "${var.proj_name}-${var.environment}-${var.rg_name}"
  location            = "${var.rg_location}"
  size                = "${var.windows_vm_sizes[0]}"
  admin_username      = "${data.azurerm_key_vault_secret.admin_username.value}"
  admin_password      = "${data.azurerm_key_vault_secret.admin_password.value}" 

  network_interface_ids = [var.nic_1_id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  tags = {
    environment = "${var.environment}"
  }
}




