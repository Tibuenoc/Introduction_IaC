<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:

```hcl
module "example" {
	 source  = "<module-path>"

	 # Required variables
	 datasets  = 
	 project  = 

	 # Optional variables
	 roles  = []
}
```

## Resources

| Name | Type |
|------|------|
| [google_bigquery_dataset_access.access_role](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset_access) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datasets"></a> [datasets](#input\_datasets) | A list of objects which include dataset\_id, dataset\_name, location and labels. | `list(string)` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project where the dataset and table are created | `string` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | Email address of the user to grant access to | `list(string)` | `[]` | no |
## Outputs

No outputs.
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->