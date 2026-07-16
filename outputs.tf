output "new_relic_monitors_id" {
  description = "Map of id values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "new_relic_monitors_account_creation_source" {
  description = "Map of account_creation_source values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.account_creation_source if v.account_creation_source != null && length(v.account_creation_source) > 0 }
}
output "new_relic_monitors_account_id" {
  description = "Map of account_id values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "new_relic_monitors_identity" {
  description = "Map of identity values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "new_relic_monitors_ingestion_key" {
  description = "Map of ingestion_key values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.ingestion_key if v.ingestion_key != null && length(v.ingestion_key) > 0 }
  sensitive   = true
}
output "new_relic_monitors_location" {
  description = "Map of location values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.location if v.location != null && length(v.location) > 0 }
}
output "new_relic_monitors_name" {
  description = "Map of name values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "new_relic_monitors_org_creation_source" {
  description = "Map of org_creation_source values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.org_creation_source if v.org_creation_source != null && length(v.org_creation_source) > 0 }
}
output "new_relic_monitors_organization_id" {
  description = "Map of organization_id values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "new_relic_monitors_plan" {
  description = "Map of plan values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.plan if v.plan != null && length(v.plan) > 0 }
}
output "new_relic_monitors_resource_group_name" {
  description = "Map of resource_group_name values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "new_relic_monitors_user" {
  description = "Map of user values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.user if v.user != null && length(v.user) > 0 }
}
output "new_relic_monitors_user_id" {
  description = "Map of user_id values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

