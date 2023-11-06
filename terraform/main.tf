locals {
  datasets = flatten([
    for fn in fileset(".", "${path.module}./config/terraform_config/datasets/*.json") : jsondecode(file(fn))
  ])
  tables = flatten([
    for fn in fileset(".", "${path.module}./config/terraform_config/tables/*.json") : jsondecode(file(fn))
  ])
  auth_access = flatten([
    for fn in fileset(".", "${path.module}./config/terraform_config/access/*.json") : jsondecode(file(fn))
  ])
}


module "dataset" {
  source   = "./module/dataset"
  datasets = toset(local.datasets)
  project  = var.project
  location = var.location
}

module "table" {
  source   = "./module/table"
  tables   = toset(local.tables)
  project  = var.project
  location = var.location

  depends_on = [
    module.dataset
  ]
}

module "auth_access" {
  source   = "./module/auth_acess"
  project  = var.project
  datasets = tolist(module.dataset.dataset_ids)
}

