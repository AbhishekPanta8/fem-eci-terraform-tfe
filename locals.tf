locals {
  project ={
    "fem-eci-project" = {
      description = "Example description of the project"
    }
  }
  workspace ={
    "fem-eci-workspace" = {
      description = "Example description of the workspace"
      execution_mode = "remote"
      project_id = module.project[
        "fem-eci-project"
      ].id
      vcs_identifier = "AbhishekPanta8/fem-eci-terraform-tfe"
    }
    "fem-eci-github" = {
      description = "Example workspace for github automation"
      execution_mode = "local"
      project_id = module.project[
        "fem-eci-project"
      ].id
      vcs_identifier = "AbhishekPanta8/fem-eci-terraform-tfe"
    }
  }
}
