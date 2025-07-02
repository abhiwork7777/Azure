variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "db_name" {
  description = "The base name for the VM and related resources"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  type        = string
  sensitive   = true
}
