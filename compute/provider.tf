terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}

  subscription_id = "14983253-c504-4850-97a7-37cd414037b4"
  client_id       = "50625f09-56f1-44a2-b15c-ec70f3e4daad"
  client_secret   = "gD68Q~KsveswlhocNt3XnLV8HzS35vG3.R0smddJ"
  tenant_id       = "89cf11d4-079d-47a6-af93-e6ae64ceb42c"
}
