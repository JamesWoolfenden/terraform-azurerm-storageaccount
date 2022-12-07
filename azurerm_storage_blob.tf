resource "azurerm_storage_blob" "pike" {
  for_each               = var.blobs
  name                   = each.key
  storage_account_name   = each.value.storage_account_name
  storage_container_name = each.value.storage_container_name
  type                   = each.value.type
  source                 = each.value.source
  depends_on = [
    azurerm_storage_container.container,
    azurerm_storage_account.store
  ]
}
