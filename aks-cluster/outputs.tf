output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  description = "Raw kube_config content for the AKS cluster"
  sensitive   = true
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "kube_config_command" {
  description = "Command to configure kubectl to use the new AKS cluster"
  value = "az aks get-credentials --resource-group ${azurerm_resource_group.rg.name} --name ${azurerm_kubernetes_cluster.aks.name}"
}

output "node_resource_group" {
  description = "The name of the node resource group created by AKS"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}

output "aks_fqdn" {
  description = "The FQDN of the Azure Kubernetes Service cluster"
  value       = azurerm_kubernetes_cluster.aks.fqdn
}
