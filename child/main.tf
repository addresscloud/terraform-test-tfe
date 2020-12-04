terraform {
  backend "remote" {
    organization = "<TFC_ORG>"

    workspaces {
      name = "tfe-test-child"
    }
  }
}
