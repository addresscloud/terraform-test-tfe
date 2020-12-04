terraform {
  backend "remote" {
    organization = "Addresscloud"

    workspaces {
      name = "tfe-test-child"
    }
  }
}