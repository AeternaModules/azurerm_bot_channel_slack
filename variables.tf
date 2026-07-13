variable "bot_channel_slacks" {
  description = <<EOT
Map of bot_channel_slacks, attributes below
Required:
    - bot_name
    - client_id
    - client_secret
    - client_secret_key_vault_id (optional, alternative to client_secret)
    - client_secret_key_vault_secret_name (optional, alternative to client_secret)
    - location
    - resource_group_name
    - verification_token
    - verification_token_key_vault_id (optional, alternative to verification_token)
    - verification_token_key_vault_secret_name (optional, alternative to verification_token)
Optional:
    - landing_page_url
    - signing_secret
    - signing_secret_key_vault_id (alternative to signing_secret - read from Key Vault instead)
    - signing_secret_key_vault_secret_name (alternative to signing_secret - read from Key Vault instead)
EOT

  type = map(object({
    bot_name                                 = string
    client_id                                = string
    client_secret                            = string
    client_secret_key_vault_id               = optional(string)
    client_secret_key_vault_secret_name      = optional(string)
    location                                 = string
    resource_group_name                      = string
    verification_token                       = string
    verification_token_key_vault_id          = optional(string)
    verification_token_key_vault_secret_name = optional(string)
    landing_page_url                         = optional(string)
    signing_secret                           = optional(string)
    signing_secret_key_vault_id              = optional(string)
    signing_secret_key_vault_secret_name     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        length(v.bot_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        length(v.client_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        length(v.client_secret) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        length(v.verification_token) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        v.landing_page_url == null || (length(v.landing_page_url) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_slacks : (
        v.signing_secret == null || (length(v.signing_secret) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

