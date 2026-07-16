output "bot_channel_slacks_id" {
  description = "Map of id values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bot_channel_slacks_bot_name" {
  description = "Map of bot_name values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.bot_name if v.bot_name != null && length(v.bot_name) > 0 }
}
output "bot_channel_slacks_client_id" {
  description = "Map of client_id values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "bot_channel_slacks_client_secret" {
  description = "Map of client_secret values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "bot_channel_slacks_landing_page_url" {
  description = "Map of landing_page_url values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.landing_page_url if v.landing_page_url != null && length(v.landing_page_url) > 0 }
}
output "bot_channel_slacks_location" {
  description = "Map of location values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bot_channel_slacks_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "bot_channel_slacks_signing_secret" {
  description = "Map of signing_secret values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.signing_secret if v.signing_secret != null && length(v.signing_secret) > 0 }
  sensitive   = true
}
output "bot_channel_slacks_verification_token" {
  description = "Map of verification_token values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.verification_token if v.verification_token != null && length(v.verification_token) > 0 }
  sensitive   = true
}

