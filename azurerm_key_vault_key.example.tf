resource "azurerm_key_vault_key" "example" {
  name            = "generated-certificate"
  key_vault_id    = azurerm_key_vault.example.id
  key_type        = "RSA-HSM"
  key_size        = 2048
  expiration_date = timeadd(timestamp(), "720h")
  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]
}
