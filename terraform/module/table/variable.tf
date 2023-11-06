variable "project" {
  description = "Project where the dataset and table are created"
  type        = string
}

variable "location" {
  description = "The GCP region where resources will be created"
  type        = string

}

variable "tables" {
  description = "A list of objects which include table_id, table_name, schema, clustering, time_partitioning, range_partitioning, expiration_time and labels."
  default     = []
  type = list(object({
    dataset_id  = string,
    table_id    = string,
    description = optional(string),
    table_name  = optional(string),
    schema = list(object({
      name        = string
      type        = string
      mode        = string
      description = string
    })),
    clustering = optional(list(string)),
    time_partitioning = optional(object({
      expiration_ms            = string,
      field                    = string,
      type                     = string,
      require_partition_filter = bool,
    })),
    range_partitioning = optional(object({
      field = string,
      range = object({
        start    = string,
        end      = string,
        interval = string,
      }),
    })),
    expiration_time = optional(number),
    labels          = map(string),
  }))
}

variable "deletion_protection" {
  description = "(Optional) Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail."
  type        = bool
  default     = false
}
