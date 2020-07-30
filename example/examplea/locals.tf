locals {
  subscriptionid = replace(element(split("-", data.azurerm_subscription.current.id), 0), "//subscriptions//", "")
  account_name   = "examplea${local.subscriptionid}"
}
