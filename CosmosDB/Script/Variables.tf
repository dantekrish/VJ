variable "resource_group_name" {
  description = "The name of the resource group in which the CosmosDB Account is created."
  type = string
  default = ""
}

variable "cosmos_db_account_name" {
  description = "The name of the CosmosDB Account."
  type = string
  default = ""
}

variable "offer_type" {
  description = "Specifies the Offer Type to use for this CosmosDB Account."
  type = string
  default = ""
}

variable "kind" {
  description = "Specifies the Kind of CosmosDB to create"
  type = string
  default = ""
}
variable "key_vault_key_id" {
  description = "Specifies the Kind of CosmosDB to create"
  type = string
  default = ""
}

variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists."
  type = string
  default = ""
}

variable "failover_location" {
  description = "vSpecifies a geo_location resource, used to define where data should be replicated with the failover_priority 0 specifying the primary location.alue"
  type = string
  default = ""
}

variable "enable_automatic_failover" {
  description = "Enable automatic fail over for this Cosmos DB account"
  type = bool
  default = false
}

variable "capabilities" {
  description = "The capability to enable"
  type = string
  default = ""
}

variable "capabilities_additional" {
  description = "The capability to enable"
  type = string
  default = ""
}

variable "consistency_level" {
  description = "The Consistency Level to use for this CosmosDB Account"
  type = string
  default = ""
}

variable "max_interval_in_seconds" {
  description = "When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400"
  type = number
  default = null
}

variable "max_staleness_prefix" {
  description = "When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 10 – 2147483647"
  type = number
  default = null
}

variable "backup_type" {
  description = "The type of the backup. Possible values are Continuous and Periodic."
  type = string
  default = ""
}

variable "backup_interval" {
  description = "The interval in minutes between two backups. This is configurable only when type is Periodic. Possible values are between 60 and 1440."
  type = number
  default = null
}

variable "backup_retention" {
  description = "The time in hours that each backup is retained. This is configurable only when type is Periodic. Possible values are between 8 and 720."
  type = number
  default = null
}

variable "backup_storage_redundancy" {
  description = "The storage redundancy which is used to indicate type of backup residency."
  type = string
  default = ""
}

variable "virtual_network_rule" {
  description = "The ID of the virtual network subnet."
  type = string
  default     = ""
}
