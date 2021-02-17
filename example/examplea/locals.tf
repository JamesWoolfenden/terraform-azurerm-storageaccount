locals {
  subscriptionid = replace(element(split("-", data.azurerm_subscription.current.id), 0), "//subscriptions//", "")
  account_name   = lower("examplea${random_string.random.result}")
}

resource "random_string" "random" {
  length  = 8
  special = false
}
