######################### data disk 1 #########################
resource "azurerm_managed_disk" "disk_1" {
  name                 = "${var.proj_name}-${var.environment}-${var.data_disk_1_name}"
  location             = "${var.rg_location}"
  resource_group_name  = "${var.proj_name}-${var.environment}-${var.rg_name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = var.disk_1_size_gb
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_1_attachment" {
  managed_disk_id    = "${azurerm_managed_disk.disk_1.id}"
  virtual_machine_id = "${var.vm_1_id}"
  lun                = "${var.disk_1_lun}"
  caching            = "ReadWrite"
}

######################### data disk 2 #########################
resource "azurerm_managed_disk" "disk_2" {
  name                 = "${var.proj_name}-${var.environment}-${var.data_disk_2_name}"
  location             = "${var.rg_location}"
  resource_group_name  = "${var.proj_name}-${var.environment}-${var.rg_name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = var.disk_2_size_gb
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_2_attachment" {
  managed_disk_id    = "${azurerm_managed_disk.disk_2.id}"
  virtual_machine_id = "${var.vm_2_id}"
  lun                = "${var.disk_2_lun}"
  caching            = "ReadWrite"
}

######################### data disk 3 #########################
resource "azurerm_managed_disk" "disk_3" {
  name                 = "${var.proj_name}-${var.environment}-${var.data_disk_3_name}"
  location             = "${var.rg_location}"
  resource_group_name  = "${var.proj_name}-${var.environment}-${var.rg_name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = var.disk_3_size_gb
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_3_attachment" {
  managed_disk_id    = "${azurerm_managed_disk.disk_3.id}"
  virtual_machine_id = "${var.vm_3_id}"
  lun                = "${var.disk_3_lun}"
  caching            = "ReadWrite"
}

######################### data disk 4 #########################
resource "azurerm_managed_disk" "disk_4" {
  name                 = "${var.proj_name}-${var.environment}-${var.data_disk_4_name}"
  location             = "${var.rg_location}"
  resource_group_name  = "${var.proj_name}-${var.environment}-${var.rg_name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = var.disk_4_size_gb
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_4_attachment" {
  managed_disk_id    = "${azurerm_managed_disk.disk_4.id}"
  virtual_machine_id = "${var.vm_4_id}"
  lun                = "${var.disk_4_lun}"
  caching            = "ReadWrite"
}