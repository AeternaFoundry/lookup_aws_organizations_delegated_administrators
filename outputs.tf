output "organizations_delegated_administrators_lookup_id" {
  description = "Map of id values across all organizations_delegated_administrators_lookup, keyed the same as var.organizations_delegated_administrators_lookup"
  value       = { for k, v in data.aws_organizations_delegated_administrators.organizations_delegated_administrators_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_delegated_administrators_lookup_delegated_administrators" {
  description = "Map of delegated_administrators values across all organizations_delegated_administrators_lookup, keyed the same as var.organizations_delegated_administrators_lookup"
  value       = { for k, v in data.aws_organizations_delegated_administrators.organizations_delegated_administrators_lookup : k => v.delegated_administrators if v.delegated_administrators != null && length(v.delegated_administrators) > 0 }
}
output "organizations_delegated_administrators_lookup_service_principal" {
  description = "Map of service_principal values across all organizations_delegated_administrators_lookup, keyed the same as var.organizations_delegated_administrators_lookup"
  value       = { for k, v in data.aws_organizations_delegated_administrators.organizations_delegated_administrators_lookup : k => v.service_principal if v.service_principal != null && length(v.service_principal) > 0 }
}

