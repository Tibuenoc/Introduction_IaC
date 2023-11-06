
locals {
  tables = { for table in var.tables : table["table_id"] => table }
}

resource "google_bigquery_table" "main" {
  for_each      = local.tables
  project       = var.project
  dataset_id    = each.value.dataset_id
  friendly_name = each.value["table_name"] != null ? each.value["table_name"] : each.key
  table_id      = each.key
  description   = each.value.description
  labels        = each.value.labels
  schema = jsonencode([
    for column in each.value.schema : {
      name        = column.name
      type        = column.type
      mode        = column.mode
      description = column.description
    }
  ])
  clustering          = each.value["clustering"]
  expiration_time     = each.value["expiration_time"]
  deletion_protection = var.deletion_protection
}