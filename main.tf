data "aws_organizations_delegated_administrators" "organizations_delegated_administrators_lookup" {
  for_each = var.organizations_delegated_administrators_lookup

  service_principal = each.value.service_principal
}

