module "project" {
  for_each = local.project
  source  = "ALT-F4-LLC/project/tfe"
  version = "0.5.0"
  description = each.value.description
  name = each.key
  organization_name = var.organization_name
}

module "workspace" {
  for_each = local.workspace
  source  = "ALT-F4-LLC/workspace/tfe"
  version = "0.8.0"

  description = each.value.description
  execution_mode = "local"
  name = each.key
  organization_name = var.organization_name
  project_id = each.value.project_id
}
# module "workspace" {
#   source  = "ALT-F4-LLC/workspace/tfe"
#   version = "0.8.0"

#   description = "Example description of the workspace"
#   execution_mode = "local"
#   name = "fem-eci-project" 
#   organization_name = var.organization_name
#   project_id = module.project.id
# }