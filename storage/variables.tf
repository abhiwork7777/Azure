variable "location" {
  type    = string
  default = "East US"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group in which to create resources"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique name for the storage account (3-24 lowercase letters and numbers only)"
}

variable "container_name" {
  type        = string
  description = "Name of the blob container to create"
}

variable "account_tier" {
  type        = string
  description = "Specifies the performance tier of the storage account (Standard or Premium)"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Specifies the replication type for the storage account (LRS, GRS, etc.)"
  default     = "LRS"
}
variable "client_id" {
  description = "Azure client ID for SP authentication"
  type        = string
}

variable "client_secret" {
  description = "Azure client secret for SP authentication"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID for SP authentication"
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription ID for SP authentication"
  type        = string
}
