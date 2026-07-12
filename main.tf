data "azurerm_key_vault_secret" "ingestion_key" {
  for_each     = { for k, v in var.new_relic_monitors : k => v if v.ingestion_key_key_vault_id != null && v.ingestion_key_key_vault_secret_name != null }
  name         = each.value.ingestion_key_key_vault_secret_name
  key_vault_id = each.value.ingestion_key_key_vault_id
}
resource "azurerm_new_relic_monitor" "new_relic_monitors" {
  for_each = var.new_relic_monitors

  location                = each.value.location
  name                    = each.value.name
  resource_group_name     = each.value.resource_group_name
  account_creation_source = each.value.account_creation_source
  account_id              = each.value.account_id
  ingestion_key           = each.value.ingestion_key != null ? each.value.ingestion_key : try(data.azurerm_key_vault_secret.ingestion_key[each.key].value, null)
  org_creation_source     = each.value.org_creation_source
  organization_id         = each.value.organization_id
  user_id                 = each.value.user_id

  plan {
    billing_cycle  = each.value.plan.billing_cycle
    effective_date = each.value.plan.effective_date
    plan_id        = each.value.plan.plan_id
    usage_type     = each.value.plan.usage_type
  }

  user {
    email        = each.value.user.email
    first_name   = each.value.user.first_name
    last_name    = each.value.user.last_name
    phone_number = each.value.user.phone_number
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      type = identity.value.type
    }
  }
}

