module "storage" {
  source         = "../../"
  common_tags    = var.common_tags
  account_name   = local.account_name
  resource_group = azurerm_resource_group.examplea
}
