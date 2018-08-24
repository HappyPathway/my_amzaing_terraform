//--------------------------------------------------------------------
// Variables
variable "salt_build_azure_location" {}
variable "salt_build_vault_azure_credentials_path" {}

//--------------------------------------------------------------------
// Modules
module "salt_build" {
  source  = "app.terraform.io/darnold-nvidia/salt-build/packer"
  version = "1.0.0"

  azure_location = "${var.salt_build_azure_location}"
  service_name = "redis-server"
  service_version = "1.2.1"
  vault_azure_credentials_path = "${var.salt_build_vault_azure_credentials_path}"
}
