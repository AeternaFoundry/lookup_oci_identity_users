data "oci_identity_users" "identity_users_lookup" {
  for_each = var.identity_users_lookup

  compartment_id       = each.value.compartment_id
  external_identifier  = each.value.external_identifier
  identity_provider_id = each.value.identity_provider_id
  name                 = each.value.name
  state                = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

