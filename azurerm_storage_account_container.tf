resource "azurerm_storage_container" "container" {
  # checkov:skip=CKV2_AZURE_8: ADD REASON
  # checkov:skip=CKV2_AZURE_21: ADD REASON
  # checkov:skip=CKV_AZURE_34: Set in local
  for_each              = var.containers
  name                  = each.key
  storage_account_name  = each.value.storage_account_name
  container_access_type = each.value.container_access_type
  depends_on = [
    azurerm_storage_account.store
  ]
}

output "containers" {
  value = azurerm_storage_container.container
}
