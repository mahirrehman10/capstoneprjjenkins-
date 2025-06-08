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

  # Optional: Use this only if your identity/service principal cannot register resource providers
  # resource_provider_registrations = "none"
}
