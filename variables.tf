variable "identity_users_lookup" {
  description = <<EOT
Map of identity_users_lookup, attributes below
Required:
    - compartment_id
Optional:
    - external_identifier
    - identity_provider_id
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id       = string
    external_identifier  = optional(string)
    identity_provider_id = optional(string)
    name                 = optional(string)
    state                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

