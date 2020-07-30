resource "azurerm_storage_account" "store" {
  name                      = var.account_name
  resource_group_name       = var.resource_group.name
  location                  = var.resource_group.location
  account_kind              = var.account_kind
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = var.enable_https_traffic_only
  #allow_blob_public_access  = var.allow_blob_public_access
  is_hns_enabled            = var.is_hns_enabled
  tags                      = var.common_tags
}

