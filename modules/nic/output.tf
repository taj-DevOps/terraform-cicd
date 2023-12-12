######################### network interface 1 ############
output "nic_1_name" {
  value = "${azurerm_network_interface.nic_1.name}"
  # sensitive = true
}

output "nic_1_id" {
  value = "${azurerm_network_interface.nic_1.id}"
  # sensitive = true
}

output "ip_config_1_name" {
  value = "${azurerm_network_interface.nic_1.ip_configuration[0].name}"
  # sensitive = true
}

######################### network interface 2 ###############
output "nic_2_name" {
  value = "${azurerm_network_interface.nic_2.name}"
  # sensitive = true
}

output "nic_2_id" {
  value = "${azurerm_network_interface.nic_2.id}"
  # sensitive = true
}

output "ip_config_2_name" {
  value = "${azurerm_network_interface.nic_2.ip_configuration[0].name}"
  # sensitive = true
} 