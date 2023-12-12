output "rg_name" {
  value = "${azurerm_resource_group.rg.name}"
  # sensitive = true
}

output "rg_location" {
  value = "${azurerm_resource_group.rg.location}"
  # sensitive = true
}

output "rg_id" {
  value = "${azurerm_resource_group.rg.id}"
  sensitive = true
}
 