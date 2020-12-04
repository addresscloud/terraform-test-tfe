// Globals
variable "secret" {
    description  = "secret - applied to child workspaces"
    default = "123"
}

// Terraform config
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "<TFC_ORG>"
    workspaces {
      name = "tfe-test-parent"
    }
  }
}

provider "tfe" {
    version = "~> 0.23"
}

// TFC org
resource "tfe_organization" "myorg" {
    name = "<TFC_ORG>"
    email = "<EMAIL>"
}