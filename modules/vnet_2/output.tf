#########################  vnet-2 and subnet-2 output ##########################

output "vnet_2_name" {
  value = "${azurerm_virtual_network.vnet_2.name}"
#   sensitive = true 
}

output "vnet_2_id" {
  value = "${azurerm_virtual_network.vnet_2.id}"
#   sensitive = true 
}
output "subnet_2_name" {
  value = "${azurerm_subnet.subnet_2.name}"
#   sensitive = true 
}

output "subnet_2_id" {
  value = "${azurerm_subnet.subnet_2.id}" 
  sensitive = true 
}

 