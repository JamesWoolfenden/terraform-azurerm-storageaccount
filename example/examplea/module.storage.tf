module "storage" {
  source         = "../../"
  common_tags    = var.common_tags
  account_name   = local.account_name
  resource_group = azurerm_resource_group.examplea
  containers = {
    "container1" = {
      name                  = "content"
      storage_account_name  = local.account_name
      container_access_type = "private"
    }
  }
  blobs = {
    "blob1" = {
      name                   = "blob"
      storage_account_name   = local.account_name
      storage_container_name = "container1"
      type                   = "Block"
      source                 = "some-local-file.zip"
  } }
}
