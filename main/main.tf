provider "azurerm" {
    features {}
}
module"resource_group" {
    source = "../module/resource"
}
module"azurerm_key_vault"{
    source = "../module/keyvalut"
    depends_on  =[module.resource_group]
    resource_group_name = module.resource_group.resource_group_name
}
module "azurerm_cosmosdb_account"{
    source = "../module/cosmosdb"
    depends_on = [module.azurerm_key_vault]
}
module "azurerm_key_vault_secret" {
    source = "../module/keyvalutkey"
    depends_on =[module.azurerm_cosmosdb_account]
}