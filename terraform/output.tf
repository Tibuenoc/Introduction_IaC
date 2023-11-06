output "project" {
  value       = var.project
  description = "The GCP project ID"
}

output "location" {
  value       = var.location
  description = "The GCP region where resources will be created"
}

output "zone" {
  value       = var.zone
  description = "The GCP zone where resources will be created"
}

output "bigquery_dataset" {
  value       = module.dataset.dataset_summary
  description = "Bigquery dataset resource."
}

output "bigquery_tables" {
  value       = module.table.tables_summary
  description = "Map of bigquery table resources being provisioned."
}
