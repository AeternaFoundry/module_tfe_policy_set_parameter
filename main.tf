resource "tfe_policy_set_parameter" "policy_set_parameters" {
  for_each = var.policy_set_parameters

  key              = each.value.key
  policy_set_id    = each.value.policy_set_id
  sensitive        = each.value.sensitive
  value            = each.value.value
  value_wo         = each.value.value_wo
  value_wo_version = each.value.value_wo_version
}

