terraform {
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
  }
  required_version = ">=0.14.8"
}
