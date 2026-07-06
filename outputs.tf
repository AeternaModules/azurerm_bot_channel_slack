output "bot_channel_slacks" {
  description = "All bot_channel_slack resources"
  value       = azurerm_bot_channel_slack.bot_channel_slacks
  sensitive   = true
}
output "bot_channel_slacks_bot_name" {
  description = "List of bot_name values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.bot_name]
}
output "bot_channel_slacks_client_id" {
  description = "List of client_id values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.client_id]
}
output "bot_channel_slacks_client_secret" {
  description = "List of client_secret values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.client_secret]
  sensitive   = true
}
output "bot_channel_slacks_landing_page_url" {
  description = "List of landing_page_url values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.landing_page_url]
}
output "bot_channel_slacks_location" {
  description = "List of location values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.location]
}
output "bot_channel_slacks_resource_group_name" {
  description = "List of resource_group_name values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.resource_group_name]
}
output "bot_channel_slacks_signing_secret" {
  description = "List of signing_secret values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.signing_secret]
  sensitive   = true
}
output "bot_channel_slacks_verification_token" {
  description = "List of verification_token values across all bot_channel_slacks"
  value       = [for k, v in azurerm_bot_channel_slack.bot_channel_slacks : v.verification_token]
  sensitive   = true
}

