resource "azurerm_storage_account_customer_managed_key" "key" {
  storage_account_id = azurerm_storage_account.store.id
  key_vault_id       = azurerm_key_vault.example.id
  key_name           = azurerm_key_vault_key.example.name
}
