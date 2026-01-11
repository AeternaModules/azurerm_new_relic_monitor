variable "new_relic_monitors" {
  description = <<EOT
Map of new_relic_monitors, attributes below
Required:
    - location
    - name
    - resource_group_name
    - plan (block):
        - billing_cycle (optional)
        - effective_date (required)
        - plan_id (optional)
        - usage_type (optional)
    - user (block):
        - email (required)
        - first_name (required)
        - last_name (required)
        - phone_number (required)
Optional:
    - account_creation_source
    - account_id
    - ingestion_key
    - org_creation_source
    - organization_id
    - user_id
    - identity (block):
        - type (required)
EOT

  type = map(object({
    location                = string
    name                    = string
    resource_group_name     = string
    account_creation_source = optional(string, "LIFTR")
    account_id              = optional(string)
    ingestion_key           = optional(string)
    org_creation_source     = optional(string, "LIFTR")
    organization_id         = optional(string)
    user_id                 = optional(string)
    plan = object({
      billing_cycle  = optional(string, "MONTHLY")
      effective_date = string
      plan_id        = optional(string, "newrelic-pay-as-you-go-free-live")
      usage_type     = optional(string, "PAYG")
    })
    user = object({
      email        = string
      first_name   = string
      last_name    = string
      phone_number = string
    })
    identity = optional(object({
      type = string
    }))
  }))
}

