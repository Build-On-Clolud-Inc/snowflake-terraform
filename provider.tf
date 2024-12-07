provider "snowflake" {
  user = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  account_name      = var.SNOWFLAKE_ACCOUNT_NAME
  organization_name = var.SNOWFLAKE_ORGANIZATION_NAME
  role     = "SYSADMIN"
}