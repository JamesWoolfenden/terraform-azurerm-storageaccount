resource "azurerm_storage_account" "store" {
  #checkov:skip=CKV_AZURE_35: "Ensure default network access rule for Storage Accounts is set to deny"
  #As rule is faulty
  name                      = var.account_name
  resource_group_name       = var.resource_group.name
  location                  = var.resource_group.location
  account_kind              = var.account_kind
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = true
  is_hns_enabled            = var.is_hns_enabled
  tags                      = var.common_tags
}
