resource "tfe_workspace" "space" {
  name         = var.workspace_name
  organization = var.organization_id
  allow_destroy_plan = true
  auto_apply = false
  execution_mode = "remote"
  terraform_version = var.terraform_version
  queue_all_runs = false
}

