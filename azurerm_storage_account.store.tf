resource "azurerm_storage_account" "store" {
  # checkov:skip=CKV2_AZURE_1: ADD REASON
  # checkov:skip=CKV_AZURE_35: "Ensure default network access rule for Storage Accounts is set to deny"
  # checkov:skip=CKV_AZURE_43: This is triggering falsely
  # checkov:skip=CKV_AZURE_36: This is triggering falsely as using dynamic blocks
  # checkov:skip=CKV2_AZURE_8:TODO

  access_tier                     = var.access_tier
  account_kind                    = var.account_kind
  account_replication_type        = var.account_replication_type
  account_tier                    = var.account_tier
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  public_network_access_enabled   = var.public_network_access_enabled

  dynamic "blob_properties" {
    for_each = var.blob_properties
    content {
      cors_rule {
        allowed_headers    = blob_properties.value["allowed_headers"]
        allowed_methods    = blob_properties.value["allowed_methods"]
        allowed_origins    = blob_properties.value["allowed_origins"]
        exposed_headers    = blob_properties.value["exposed_headers"]
        max_age_in_seconds = blob_properties.value["max_age_in_seconds"]
      }
      delete_retention_policy {
        days = blob_properties.value["day"]
      }
    }
  }

  dynamic "custom_domain" {
    for_each = var.custom_domain
    content {
      name          = custom_domain.value["name"]
      use_subdomain = custom_domain.value["use_subdomain"]
    }
  }

  enable_https_traffic_only = true

  identity {
    type = "SystemAssigned"
  }

  is_hns_enabled           = var.is_hns_enabled
  large_file_share_enabled = var.large_file_share_enabled
  location                 = var.resource_group.location
  min_tls_version          = "TLS1_2"

  # can only consist of lowercase letters and numbers, and must be between 3 and 24 characters long
  name = local.account_name

  dynamic "network_rules" {
    for_each = var.network_rules
    content {
      default_action             = network_rules.value["default_action"]
      bypass                     = network_rules.value["bypass"]
      ip_rules                   = network_rules.value["ip_rules"]
      virtual_network_subnet_ids = network_rules.value["virtual_network_subnet_ids"]
    }
  }

  dynamic "queue_properties" {
    for_each = var.queue_properties
    content {
      cors_rule {
        allowed_headers    = queue_properties.value["allowed_headers"]
        allowed_origins    = queue_properties.value["allowed_origins"]
        allowed_methods    = queue_properties.value["allowed_methods"]
        exposed_headers    = queue_properties.value["exposed_headers"]
        max_age_in_seconds = queue_properties.value["max_age_in_seconds"]
      }

      logging {
        delete                = queue_properties.value["delete"]
        read                  = queue_properties.value["read"]
        version               = queue_properties.value["version"]
        write                 = queue_properties.value["write"]
        retention_policy_days = queue_properties.value["retention_policy_days"]
      }

      minute_metrics {
        enabled               = queue_properties.value["enabled"]
        version               = queue_properties.value["version"]
        include_apis          = queue_properties.value["include_apis"]
        retention_policy_days = queue_properties.value["retention_policy_days"]
      }

      hour_metrics {
        enabled               = queue_properties.value["enabled"]
        version               = queue_properties.value["version"]
        include_apis          = queue_properties.value["include_apis"]
        retention_policy_days = queue_properties.value["retention_policy_days"]
      }
    }
  }

  resource_group_name = var.resource_group.name

  static_website {
    index_document     = var.static_website["index_document"]
    error_404_document = var.static_website["error_404_document"]
  }

  tags = var.common_tags
}


locals {
  account_name = lower(var.account_name)
}

variable "allow_nested_items_to_be_public" {
  type    = bool
  default = false
}

var "public_network_access_enabled" {
  type    = bool
  default = false
}
