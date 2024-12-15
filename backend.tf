terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformStateRG"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "terraformsnowflakestate1"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "sbx.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    #these values are in github environment 
    # client_id            = ""  # Can also be set via `ARM_CLIENT_ID` environment variable.
    # subscription_id      = ""  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    # tenant_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_TENANT_ID` environment variable.
  }
}
