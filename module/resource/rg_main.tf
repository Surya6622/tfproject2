resource "azurerm_resource_group""gka" {
    name = var.gka_name
    location=var.location
    tags=var.tags
}