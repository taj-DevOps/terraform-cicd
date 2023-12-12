################ public-ip 1 ###########

output "pip_1_name" {
  value = "${azurerm_public_ip.pip_1.name}"
}

output "pip_1_id" {
  value = "${azurerm_public_ip.pip_1.id}"
  # sensitive = true
}

################ public-ip 2 #############
output "pip_2_name" {
  value = "${azurerm_public_ip.pip_2.name}"
}

output "pip_2_id" {
  value = "${azurerm_public_ip.pip_2.id}"
  # sensitive = true
}