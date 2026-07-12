output "new_relic_monitors_account_creation_source" {
  description = "Map of account_creation_source values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.account_creation_source }
}
output "new_relic_monitors_account_id" {
  description = "Map of account_id values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.account_id }
}
output "new_relic_monitors_identity" {
  description = "Map of identity values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.identity }
}
output "new_relic_monitors_ingestion_key" {
  description = "Map of ingestion_key values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.ingestion_key }
  sensitive   = true
}
output "new_relic_monitors_location" {
  description = "Map of location values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.location }
}
output "new_relic_monitors_name" {
  description = "Map of name values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.name }
}
output "new_relic_monitors_org_creation_source" {
  description = "Map of org_creation_source values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.org_creation_source }
}
output "new_relic_monitors_organization_id" {
  description = "Map of organization_id values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.organization_id }
}
output "new_relic_monitors_plan" {
  description = "Map of plan values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.plan }
}
output "new_relic_monitors_resource_group_name" {
  description = "Map of resource_group_name values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.resource_group_name }
}
output "new_relic_monitors_user" {
  description = "Map of user values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.user }
}
output "new_relic_monitors_user_id" {
  description = "Map of user_id values across all new_relic_monitors, keyed the same as var.new_relic_monitors"
  value       = { for k, v in azurerm_new_relic_monitor.new_relic_monitors : k => v.user_id }
}

