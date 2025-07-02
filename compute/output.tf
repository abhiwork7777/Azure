output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}

output "public_ip_address" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "nic_id" {
  value = azurerm_network_interface.nic.id
}
