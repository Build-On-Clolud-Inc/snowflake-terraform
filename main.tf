terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  account  = var.snowflake_account
  private_key = file(var.snowflake_private_key_path)
  role = "SYSADMIN"
}

resource "snowflake_database" "db" {
  name = "TF_DEMO_Ehsan_DB"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO_Ehsan_WH"
  warehouse_size = "xsmall"
  auto_suspend   = 1
}