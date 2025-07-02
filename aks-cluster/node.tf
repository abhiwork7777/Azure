resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aksdns"
  kubernetes_version  = "1.31.9"

  default_node_pool {
    name           = var.node_pool_name
    node_count     = var.node_count
    vm_size        = var.vm_size
    vnet_subnet_id = azurerm_subnet.subnet.id
    type           = "VirtualMachineScaleSets"
    os_disk_type   = "Managed"
    scale_down_mode = "Delete"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin     = "azure"
    load_balancer_sku  = "standard"
    outbound_type      = "loadBalancer"
    dns_service_ip     = "10.2.0.10"
    service_cidr       = "10.2.0.0/24"
  }

  role_based_access_control_enabled = true
  oidc_issuer_enabled               = true
  workload_identity_enabled         = true
  run_command_enabled               = true

  tags = {
    environment = "dev"
  }

  depends_on = [azurerm_subnet.subnet]
}
