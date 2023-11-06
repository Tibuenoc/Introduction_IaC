locals {
  datasets = { for dataset in var.datasets : dataset["dataset_id"] => dataset }
}

resource "google_bigquery_dataset" "main" {
  for_each                    = local.datasets
  project                     = var.project
  dataset_id                  = each.key
  friendly_name               = each.value["dataset_name"] != null ? each.value["dataset_name"] : each.key
  description                 = each.value["description"]
  location                    = var.location
  delete_contents_on_destroy  = var.delete_contents_on_destroy
  default_table_expiration_ms = var.default_table_expiration_ms
  labels                      = each.value["labels"]
}
