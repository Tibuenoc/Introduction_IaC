
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.1"
    }
  }
}

provider "google" {
  scopes = [
    # To configure an external table with a Google Sheet you must pass this scope
    # see: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_table#source_format
    # "https://www.googleapis.com/auth/drive.readonly",
    "https://www.googleapis.com/auth/userinfo.email",
    # Because we are using scopes, you must also give it the BigQuery scope
    "https://www.googleapis.com/auth/bigquery",
  ]
  project = var.project
  region  = var.location
  zone    = var.zone
}
