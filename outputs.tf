output "bot_channel_slacks_bot_name" {
  description = "Map of bot_name values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.bot_name }
}
output "bot_channel_slacks_client_id" {
  description = "Map of client_id values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.client_id }
}
output "bot_channel_slacks_client_secret" {
  description = "Map of client_secret values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.client_secret }
  sensitive   = true
}
output "bot_channel_slacks_landing_page_url" {
  description = "Map of landing_page_url values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.landing_page_url }
}
output "bot_channel_slacks_location" {
  description = "Map of location values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.location }
}
output "bot_channel_slacks_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.resource_group_name }
}
output "bot_channel_slacks_signing_secret" {
  description = "Map of signing_secret values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.signing_secret }
  sensitive   = true
}
output "bot_channel_slacks_verification_token" {
  description = "Map of verification_token values across all bot_channel_slacks, keyed the same as var.bot_channel_slacks"
  value       = { for k, v in azurerm_bot_channel_slack.bot_channel_slacks : k => v.verification_token }
  sensitive   = true
}

