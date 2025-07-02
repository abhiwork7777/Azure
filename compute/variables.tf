variable "location" {
  description = "The Azure location to deploy resources"
  type        = string
}

variable "resource_group_name" {
  description = "The Azure resource group name"
  type        = string
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
}

variable "vm_size" {
  description = "Virtual machine size"
  type        = string
}

variable "admin_username" {
  description = "VM admin username"
  type        = string
}

variable "ssh_public_key" {
  description = "Public SSH key for the VM"
  type        = string
}

variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}
