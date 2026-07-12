data "azurerm_key_vault_secret" "client_secret" {
  for_each     = { for k, v in var.bot_channel_slacks : k => v if v.client_secret_key_vault_id != null && v.client_secret_key_vault_secret_name != null }
  name         = each.value.client_secret_key_vault_secret_name
  key_vault_id = each.value.client_secret_key_vault_id
}
data "azurerm_key_vault_secret" "verification_token" {
  for_each     = { for k, v in var.bot_channel_slacks : k => v if v.verification_token_key_vault_id != null && v.verification_token_key_vault_secret_name != null }
  name         = each.value.verification_token_key_vault_secret_name
  key_vault_id = each.value.verification_token_key_vault_id
}
data "azurerm_key_vault_secret" "signing_secret" {
  for_each     = { for k, v in var.bot_channel_slacks : k => v if v.signing_secret_key_vault_id != null && v.signing_secret_key_vault_secret_name != null }
  name         = each.value.signing_secret_key_vault_secret_name
  key_vault_id = each.value.signing_secret_key_vault_id
}
resource "azurerm_bot_channel_slack" "bot_channel_slacks" {
  for_each = var.bot_channel_slacks

  bot_name            = each.value.bot_name
  client_id           = each.value.client_id
  client_secret       = each.value.client_secret != null ? each.value.client_secret : try(data.azurerm_key_vault_secret.client_secret[each.key].value, null)
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  verification_token  = each.value.verification_token != null ? each.value.verification_token : try(data.azurerm_key_vault_secret.verification_token[each.key].value, null)
  landing_page_url    = each.value.landing_page_url
  signing_secret      = each.value.signing_secret != null ? each.value.signing_secret : try(data.azurerm_key_vault_secret.signing_secret[each.key].value, null)
}

