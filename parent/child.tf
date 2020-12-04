module "child" {
            source = "./modules/workspaces"
            secret = "123"
            organization_id = tfe_organization.myorg.id
            terraform_version = "0.12.20"
            workspace_name = "tfe-test-child"
        }