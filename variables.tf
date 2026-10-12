variable "policy_set_parameters" {
  description = <<EOT
Map of policy_set_parameters, attributes below
Required:
    - key
    - policy_set_id
Optional:
    - sensitive
    - value
    - value_wo
    - value_wo_version
EOT

  type = map(object({
    key              = string
    policy_set_id    = string
    sensitive        = optional(bool)
    value            = optional(string)
    value_wo         = optional(string)
    value_wo_version = optional(number)
  }))
}

