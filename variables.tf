variable "app_group_assignments" {
  description = <<EOT
Map of app_group_assignments, attributes below
Required:
    - app_id
    - group_id
Optional:
    - priority
    - profile
    - retain_assignment
    - timeouts (block):
        - create (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    app_id            = string
    group_id          = string
    priority          = optional(number)
    profile           = optional(string)
    retain_assignment = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

