resource "azurerm_storage_account_network_rules" "store" {
  resource_group_name  = var.resource_group.name
  storage_account_name = azurerm_storage_account.store.name

  default_action = var.default_action
}


variable "default_action" {
  type        = string
  description = "describe your variable"
  default     = "Deny"
  validation {
    condition     = can(regex("Allow|Deny", var.default_action))
    error_message = "Action can only be Allow or Deny."
  }
}
