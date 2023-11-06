
#output "access_summary" {
#  value = [for access in google_bigquery_dataset_iam_policy.dataset : {
#    dataset_id      = access.dataset_id,
#    policy_data = access.policy_data
#  }]
#  description = "Summary of access(s)"
#}