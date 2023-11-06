output "dataset_ids" {
  value = [for dataset in google_bigquery_dataset.main : dataset.dataset_id]
}

output "dataset_summary" {
  value = [for dataset in google_bigquery_dataset.main : {
    project          = dataset.project,
    location_dataset = dataset.location,
    dataset_ids      = dataset.dataset_id,
    dataset_names    = dataset.friendly_name,
    dataset_labels   = dataset.labels
  }]
  description = "Summary of dataset(s)"
}



