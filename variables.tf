variable "system_schemas" {
  description = <<EOT
Map of system_schemas, attributes below
Required:
    - schema
Optional:
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    schema = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

