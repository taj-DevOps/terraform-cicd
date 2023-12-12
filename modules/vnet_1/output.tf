#########################  vnet-1 and subnet-1 output ##########################

output "vnet_1_name" {
  value = "${azurerm_virtual_network.vnet_1.name}"
#   sensitive = true 
}

output "vnet_1_id" {
  value = "${azurerm_virtual_network.vnet_1.id}"
#   sensitive = true 
}
output "subnet_1_name" {
  value = "${azurerm_subnet.subnet_1.name}"
#   sensitive = true 
}

output "subnet_1_id" {
  value = "${azurerm_subnet.subnet_1.id}" 
  sensitive = true 
}

 