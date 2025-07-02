resource "random_string" "storage_suffix" {
  length  = 8
  upper   = false
  special = false
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = "${var.storage_account_name}${random_string.storage_suffix.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = {
    Name        = "${var.storage_account_name}-${random_string.storage_suffix.result}"
    Environment = "dev"
  }
}

resource "azurerm_storage_container" "blob_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}
