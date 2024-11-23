resource "snowflake_database" "db" {
  name = "TF_DEMO_Ehsan_DB"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO_Ehsan_WH"
  warehouse_size = "xsmall"
  auto_suspend   = 1
}