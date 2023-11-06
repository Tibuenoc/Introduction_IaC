variable "project" {
  description = "Project where the dataset and table are created"
  type        = string
}

variable "location" {
  description = "The GCP region where resources will be created"
  type        = string

}

variable "datasets" {
  description = "A list of objects which include dataset_id, dataset_name, location and labels."
  default     = []
  type = list(object({
    project_id   = optional(string),
    dataset_id   = string,
    description  = optional(string),
    dataset_name = optional(string),
    location     = optional(string),
    labels       = map(string)
  }))
}

variable "delete_contents_on_destroy" {
  description = "(Optional) If set to true, delete all the tables in the dataset when destroying the resource; otherwise, destroying the resource will fail if tables are present."
  type        = bool
  default     = false
}

variable "default_table_expiration_ms" {
  description = "Default TTL of tables using the dataset in MS."
  default     = null
}

