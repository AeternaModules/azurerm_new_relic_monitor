output "new_relic_monitors" {
  description = "All new_relic_monitor resources"
  value       = azurerm_new_relic_monitor.new_relic_monitors
  sensitive   = true
}
output "new_relic_monitors_account_creation_source" {
  description = "List of account_creation_source values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.account_creation_source]
}
output "new_relic_monitors_account_id" {
  description = "List of account_id values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.account_id]
}
output "new_relic_monitors_identity" {
  description = "List of identity values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.identity]
}
output "new_relic_monitors_ingestion_key" {
  description = "List of ingestion_key values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.ingestion_key]
  sensitive   = true
}
output "new_relic_monitors_location" {
  description = "List of location values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.location]
}
output "new_relic_monitors_name" {
  description = "List of name values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.name]
}
output "new_relic_monitors_org_creation_source" {
  description = "List of org_creation_source values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.org_creation_source]
}
output "new_relic_monitors_organization_id" {
  description = "List of organization_id values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.organization_id]
}
output "new_relic_monitors_plan" {
  description = "List of plan values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.plan]
}
output "new_relic_monitors_resource_group_name" {
  description = "List of resource_group_name values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.resource_group_name]
}
output "new_relic_monitors_user" {
  description = "List of user values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.user]
}
output "new_relic_monitors_user_id" {
  description = "List of user_id values across all new_relic_monitors"
  value       = [for k, v in azurerm_new_relic_monitor.new_relic_monitors : v.user_id]
}

