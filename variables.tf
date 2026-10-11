variable "organizations_delegated_administrators_lookup" {
  description = <<EOT
Map of organizations_delegated_administrators_lookup, attributes below
Optional:
    - service_principal
EOT

  type = map(object({
    service_principal = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.organizations_delegated_administrators_lookup : (
        v.service_principal == null || (length(v.service_principal) >= 1 && length(v.service_principal) <= 128)
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
}

