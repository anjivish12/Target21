module "rg" {
    source = "../../modules/azurerm_rg"
    rgs = var.rgs
}

module "acr" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_acr"
    acrs = var.acrs 
}

module "aks" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_aks"
    aks = var.aks
}

module "key" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_key_vault"
    keys = var.keys
}
module "secret" {
    depends_on = [ module.rg, module.key ]
    source = "../../modules/azurerm_kv_secret"
    secrets = var.secrets 
}

module "server" {
    depends_on = [ module.rg, module.key, module.secret ]
    source = "../../modules/azurerm_mysql_server"
    servers = var.servers
  
}

module "database" {
    depends_on = [ module.rg, module.server ]
    source = "../../modules/azurerm_mysql_database"
    databases =  var.databases
  
}
