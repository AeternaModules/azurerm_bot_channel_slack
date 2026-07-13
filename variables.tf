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
  # --- Unconfirmed validation candidates, derived from azurerm_bot_channel_slack's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: bot_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_secret
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: verification_token
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: landing_page_url
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: signing_secret
  #   condition: length(value) > 0
  #   message:   must not be empty
}

