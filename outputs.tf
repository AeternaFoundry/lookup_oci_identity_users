output "identity_users_lookup_id" {
  description = "Map of id values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_users_lookup_compartment_id" {
  description = "Map of compartment_id values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "identity_users_lookup_external_identifier" {
  description = "Map of external_identifier values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no external_identifier are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.external_identifier if v.external_identifier != null && length(v.external_identifier) > 0 }
}
output "identity_users_lookup_filter" {
  description = "Map of filter values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_users_lookup_identity_provider_id" {
  description = "Map of identity_provider_id values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no identity_provider_id are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.identity_provider_id if v.identity_provider_id != null && length(v.identity_provider_id) > 0 }
}
output "identity_users_lookup_name" {
  description = "Map of name values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_users_lookup_state" {
  description = "Map of state values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "identity_users_lookup_users" {
  description = "Map of users values across all identity_users_lookup, keyed the same as var.identity_users_lookup except keys with no users are omitted"
  value       = { for k, v in data.oci_identity_users.identity_users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

