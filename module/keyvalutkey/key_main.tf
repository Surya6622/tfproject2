resource "azurerm_key_vault_secret" "example" {
  name         = var.secret-sauce
  value        = var.password
  key_vault_id = var.example_id
}