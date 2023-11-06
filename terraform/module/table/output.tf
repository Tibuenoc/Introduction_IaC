
output "tables_summary" {
  value = [for table in google_bigquery_table.main : {
    dataset_ids_table = table.dataset_id,
    table_id          = table.table_id,
    table_name        = table.friendly_name,
    table_schema      = table.schema,
    tables_labels     = table.labels
  }]
  description = "Summary of table(s)"
}
