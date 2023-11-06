<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:

```hcl
module "example" {
	 source  = "<module-path>"

	 # Required variables
	 location  = 
	 project  = 

	 # Optional variables
	 deletion_protection  = false
	 tables  = []
}
```

## Resources

| Name | Type |
|------|------|
| [google_bigquery_table.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_table) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | (Optional) Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The GCP region where resources will be created | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project where the dataset and table are created | `string` | n/a | yes |
| <a name="input_tables"></a> [tables](#input\_tables) | A list of objects which include table\_id, table\_name, schema, clustering, time\_partitioning, range\_partitioning, expiration\_time and labels. | <pre>list(object({<br>    dataset_id  = string,<br>    table_id    = string,<br>    description = optional(string),<br>    table_name  = optional(string),<br>    schema = list(object({<br>      name        = string<br>      type        = string<br>      mode        = string<br>      description = string<br>    })),<br>    clustering = optional(list(string)),<br>    time_partitioning = optional(object({<br>      expiration_ms            = string,<br>      field                    = string,<br>      type                     = string,<br>      require_partition_filter = bool,<br>    })),<br>    range_partitioning = optional(object({<br>      field = string,<br>      range = object({<br>        start    = string,<br>        end      = string,<br>        interval = string,<br>      }),<br>    })),<br>    expiration_time = optional(number),<br>    labels          = map(string),<br>  }))</pre> | `[]` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tables_summary"></a> [tables\_summary](#output\_tables\_summary) | Summary of table(s) |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->