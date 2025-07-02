variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  default = "devops-vnet"
}

variable "vnet_address_space" {
  default = "10.0.0.0/16"
}

variable "public_subnet_name" {
  default = "public-subnet"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_name" {
  default = "private-subnet"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}
