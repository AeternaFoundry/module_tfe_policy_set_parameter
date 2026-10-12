output "policy_set_parameters_id" {
  description = "Map of id values across all policy_set_parameters, keyed the same as var.policy_set_parameters except keys with no id are omitted"
  value       = { for k, v in tfe_policy_set_parameter.policy_set_parameters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "policy_set_parameters_key" {
  description = "Map of key values across all policy_set_parameters, keyed the same as var.policy_set_parameters except keys with no key are omitted"
  value       = { for k, v in tfe_policy_set_parameter.policy_set_parameters : k => v.key if v.key != null && length(v.key) > 0 }
}
output "policy_set_parameters_policy_set_id" {
  description = "Map of policy_set_id values across all policy_set_parameters, keyed the same as var.policy_set_parameters except keys with no policy_set_id are omitted"
  value       = { for k, v in tfe_policy_set_parameter.policy_set_parameters : k => v.policy_set_id if v.policy_set_id != null && length(v.policy_set_id) > 0 }
}
output "policy_set_parameters_sensitive" {
  description = "Map of sensitive values across all policy_set_parameters, keyed the same as var.policy_set_parameters except keys with no sensitive are omitted"
  value       = { for k, v in tfe_policy_set_parameter.policy_set_parameters : k => v.sensitive if v.sensitive != null }
}
output "policy_set_parameters_value" {
  description = "Map of value values across all policy_set_parameters, keyed the same as var.policy_set_parameters except keys with no value are omitted"
  value       = { for k, v in tfe_policy_set_parameter.policy_set_parameters : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}
output "policy_set_parameters_value_wo_version" {
  description = "Map of value_wo_version values across all policy_set_parameters, keyed the same as var.policy_set_parameters except keys with no value_wo_version are omitted"
  value       = { for k, v in tfe_policy_set_parameter.policy_set_parameters : k => v.value_wo_version if v.value_wo_version != null }
}

