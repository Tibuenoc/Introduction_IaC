
variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "location" {
  description = "The GCP region where resources will be created"
  type        = string
}

variable "zone" {
  description = "The GCP zone where resources will be created"
  type        = string
}

variable "env" {
  description = "Environment that will be use config and created"
  type        = string
}

