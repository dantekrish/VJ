provider "azurerm" {
  
  features {

  }
}
resource "azurerm_cosmosdb_account" "acc" {

  name                      = var.cosmos_db_account_name
  location                  = "${var.resource_group_location}"
  resource_group_name       = var.resource_group_name
  offer_type                = var.offer_type
  kind                      = var.kind
  enable_automatic_failover = var.enable_automatic_failover
  key_vault_key_id          = var.key_vault_key_id

  dynamic "capabilities" {
      for_each = length(var.capabilities) > 0 ? [1] : []
      content {
    name = "${var.capabilities}"
      }
  }

  dynamic "capabilities" {
    for_each = length(var.capabilities_additional) > 0 ? [1] : []
    content {
    name = var.capabilities_additional
    }
  }

  consistency_policy {
    consistency_level = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix = var.max_staleness_prefix
  }

  dynamic "geo_location" {
    for_each = length(var.failover_location) > 0 ? [1] : []
    content {
    location          = "${var.failover_location}"
    failover_priority = 1
    }
  }

  geo_location {
    location          = var.resource_group_location
    failover_priority = 0
  }
 
  dynamic "backup" {
    for_each = length(var.backup_type) > 0 ? [1] : []
    content {
    type = var.backup_type
    interval_in_minutes = var.backup_interval
    retention_in_hours = var.backup_retention
    storage_redundancy = var.backup_storage_redundancy
    }
  }
  dynamic "virtual_network_rule" {
    for_each = length(var.virtual_network_rule) > 0 ? [1] : []
    content {
    id = "${var.virtual_network_rule}"
  }
  }
}