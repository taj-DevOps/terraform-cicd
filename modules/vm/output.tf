###################### linux vm outputs ###########
output "linux_vm_name" {
  value = "${azurerm_linux_virtual_machine.linux_vm.name}"
  # sensitive = true
}

output "linux_vm_location" {
  value = "${azurerm_linux_virtual_machine.linux_vm.location}"
  # sensitive = true
}

output "linux_vm_id" {
  value = "${azurerm_linux_virtual_machine.linux_vm.id}"
  # sensitive = true
}

output "linux_vm_size" {
  value = "${azurerm_linux_virtual_machine.linux_vm.size}"
  # sensitive = true
}

########################  windows vm outputs ##########
output "windows_vm_name" {
  value = "${azurerm_windows_virtual_machine.windows_vm.name}"
  # sensitive = true
}

output "windows_vm_location" {
  value = "${azurerm_windows_virtual_machine.windows_vm.location}"
  # sensitive = true
}

output "windows_vm_id" {
  value = "${azurerm_windows_virtual_machine.windows_vm.id}"
  # sensitive = true
}

output "windows_vm_size" {
  value = "${azurerm_windows_virtual_machine.windows_vm.size}"
  # sensitive = true
}


