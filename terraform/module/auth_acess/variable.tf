

variable "datasets" {
  description = "A list of objects which include dataset_id, dataset_name, location and labels."
  type        = list(string)
}

variable "project" {
  description = "Project where the dataset and table are created"
  type        = string
}

variable "roles" {
  description = "Email address of the user to grant access to"
  default     = []
  type        = list(string)
}