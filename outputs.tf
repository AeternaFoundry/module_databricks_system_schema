output "system_schemas_id" {
  description = "Map of id values across all system_schemas, keyed the same as var.system_schemas except keys with no id are omitted"
  value       = { for k, v in databricks_system_schema.system_schemas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "system_schemas_auto_enabled" {
  description = "Map of auto_enabled values across all system_schemas, keyed the same as var.system_schemas except keys with no auto_enabled are omitted"
  value       = { for k, v in databricks_system_schema.system_schemas : k => v.auto_enabled if v.auto_enabled != null }
}
output "system_schemas_full_name" {
  description = "Map of full_name values across all system_schemas, keyed the same as var.system_schemas except keys with no full_name are omitted"
  value       = { for k, v in databricks_system_schema.system_schemas : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "system_schemas_metastore_id" {
  description = "Map of metastore_id values across all system_schemas, keyed the same as var.system_schemas except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_system_schema.system_schemas : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "system_schemas_provider_config" {
  description = "Map of provider_config values across all system_schemas, keyed the same as var.system_schemas except keys with no provider_config are omitted"
  value       = { for k, v in databricks_system_schema.system_schemas : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "system_schemas_schema" {
  description = "Map of schema values across all system_schemas, keyed the same as var.system_schemas except keys with no schema are omitted"
  value       = { for k, v in databricks_system_schema.system_schemas : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "system_schemas_state" {
  description = "Map of state values across all system_schemas, keyed the same as var.system_schemas except keys with no state are omitted"
  value       = { for k, v in databricks_system_schema.system_schemas : k => v.state if v.state != null && length(v.state) > 0 }
}

