locals {
  project ={
    "fem-eci-project" = {
      description = "Example description of the project"
    }
  }
  workspace ={
    "fem-eci-tfe" = {
      description = "Example description of the workspace"
      execution_mode = "local"
      project_id = module.project[
        "fem-eci-project"
      ].id
    }
  }
}