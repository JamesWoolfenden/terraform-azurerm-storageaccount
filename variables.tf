variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}


variable "account_kind" {
  type        = string
  description = "Defines the Kind of account."
  default     = "StorageV2"
}

variable "is_hns_enabled" {
  type        = bool
  description = "Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2"
  default     = false
}

variable "account_name" {
    type = string
    description = "(optional) describe your variable"
}

variable "resource_group" {
    description = "Resource group name"
}

variable "account_tier" {
  type = string
  description = "(optional) describe your variable"
  default="Standard"
}

variable "enable_https_traffic_only" {
  type = bool
  description = "Boolean flag which forces HTTPS if enabled"
  default=true
}

variable "account_replication_type" {
  type = string
  description = "Defines the type of replication to use for this storage account"
  default="LRS"
}
