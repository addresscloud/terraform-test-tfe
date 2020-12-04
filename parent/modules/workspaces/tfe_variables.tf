resource "tfe_variable" "secret" {
  key          = "secret"
  value        = var.secret
  category     = "env"
  workspace_id = tfe_workspace.space.id
  sensitive = true
}
