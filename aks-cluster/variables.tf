variable "location" {
  description = "Azure region where resources will be created"
}

variable "resource_group_name" {
  description = "Resource Group name for AKS and related resources"
  default     = "aks-resource-group"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}


variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
 
}
variable "subnet_name" {
  description = "Name of the subnet for AKS"
  
}
variable "node_pool_name" {
  description = "The name of the default node pool"
  
}

variable "node_count" {
  description = "The desired number of nodes in the pool"
  
}

variable "min_count" {
  description = "Minimum number of nodes in the node pool"
 
}

variable "max_count" {
  description = "Maximum number of nodes in the node pool"
 
}

variable "vm_size" {
  description = "The size of the VM used in the node pool"
  
}

