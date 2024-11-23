provider "snowflake" {
  account  = var.snowflake_account
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  role     = "SYSADMIN"
}