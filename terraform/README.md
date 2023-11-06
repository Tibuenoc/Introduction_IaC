# TF code base

## Introduction
This code defines Terraform configurations using modules to manage various resources. It dynamically collects JSON configuration files from specified directories for datasets, tables, access, buckets, and pubsub, then processes and decodes them. The gathered data is used to instantiate modules that create resources such as buckets, pubsub topics, datasets, tables, and authentication access. Interdependencies are managed, ensuring proper resource creation sequence.
<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.63.1 |
## Usage
Basic usage of this module is as follows:

```hcl
module "example" {
	 source  = "<module-path>"

	 # Required variables
	 env  = 
	 location  = 
	 project  = 
	 zone  = 
}
```

## Resources

No resources.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | Environment that will be use config and created | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The GCP region where resources will be created | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The GCP project ID | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | The GCP zone where resources will be created | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bigquery_dataset"></a> [bigquery\_dataset](#output\_bigquery\_dataset) | Bigquery dataset resource. |
| <a name="output_bigquery_tables"></a> [bigquery\_tables](#output\_bigquery\_tables) | Map of bigquery table resources being provisioned. |
| <a name="output_location"></a> [location](#output\_location) | The GCP region where resources will be created |
| <a name="output_project"></a> [project](#output\_project) | The GCP project ID |
| <a name="output_zone"></a> [zone](#output\_zone) | The GCP zone where resources will be created |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->
## Footer
Contributor Names: Tiago Correa 