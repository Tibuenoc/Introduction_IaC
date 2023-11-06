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
	 datasets  = []
	 default_table_expiration_ms  = null
	 delete_contents_on_destroy  = false
}
```

## Resources

| Name | Type |
|------|------|
| [google_bigquery_dataset.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datasets"></a> [datasets](#input\_datasets) | A list of objects which include dataset\_id, dataset\_name, location and labels. | <pre>list(object({<br>    project_id   = optional(string),<br>    dataset_id   = string,<br>    description  = optional(string),<br>    dataset_name = optional(string),<br>    location     = optional(string),<br>    labels       = map(string)<br>  }))</pre> | `[]` | no |
| <a name="input_default_table_expiration_ms"></a> [default\_table\_expiration\_ms](#input\_default\_table\_expiration\_ms) | Default TTL of tables using the dataset in MS. | `any` | `null` | no |
| <a name="input_delete_contents_on_destroy"></a> [delete\_contents\_on\_destroy](#input\_delete\_contents\_on\_destroy) | (Optional) If set to true, delete all the tables in the dataset when destroying the resource; otherwise, destroying the resource will fail if tables are present. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The GCP region where resources will be created | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project where the dataset and table are created | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dataset_ids"></a> [dataset\_ids](#output\_dataset\_ids) | n/a |
| <a name="output_dataset_summary"></a> [dataset\_summary](#output\_dataset\_summary) | Summary of dataset(s) |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->