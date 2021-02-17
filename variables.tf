variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
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
  type        = string
  description = "Storage account name"
  validation {
    condition     = length(var.account_name) >= 3 && length(var.account_name) <= 20
    error_message = "The Account Name needs to be in lowercase and between or equal to 3-20."
  }
}

variable "resource_group" {
  description = "Resource group name"
}

variable "account_tier" {
  type        = string
  description = "(optional) describe your variable"
  default     = "Standard"
}

variable "enable_https_traffic_only" {
  type        = bool
  description = "Boolean flag which forces HTTPS if enabled"
  default     = true
}

variable "account_replication_type" {
  type        = string
  description = "Defines the type of replication to use for this storage account"
  default     = "LRS"
}

variable "network_rules" {
  default = []
}

variable "queue_properties" {
  default = []
}

variable "custom_domain" {
  default = []
}

variable "blobs" {
  default = []
}

variable "static_website" {
  default = {
    index_document     = "index.html"
    error_404_document = "404.html"
  }
}

variable "allow_blob_public_access" {
  type        = bool
  description = "Allow or disallow public access to all blobs or containers in the storage account."
  default     = false
}

variable "access_tier" {
  description = "Can only be Hot or Cool"
  default     = "Hot"
  validation {
    condition     = var.access_tier == "Hot" || var.access_tier == "Cool"
    error_message = "Valid values are Hot or Cool."
  }
}

variable "large_file_share_enabled" {
  type    = bool
  default = false
}
