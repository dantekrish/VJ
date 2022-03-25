provider "azurerm" {
    
  features {

  }
}

module "DB_Account_test_1" {
    source = ".//vj_test"
    resource_group_name = "1-f7c4d673-playground-sandbox"
    cosmos_db_account_name = "tstvijaydemo456"
    resource_group_location = "East US"
    offer_type = "Standard"
    kind = "GlobalDocumentDB"
    enable_automatic_failover = true
    consistency_level = "Session"
    max_interval_in_seconds = 300
    max_staleness_prefix = 100000
}