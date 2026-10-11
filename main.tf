resource "databricks_system_schema" "system_schemas" {
  for_each = var.system_schemas

  schema = each.value.schema

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

