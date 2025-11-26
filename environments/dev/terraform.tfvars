rgs = {
    rg1 = {
        name = "rg-anjali"
        location = "West US"
    }
}

acrs = {
    acr1 = {
        name = "acrwanjali1"
        resource_group_name = "rg-anjali"
        location = "West US"
        sku = "Premium"
        admin_enabled = false
        georeplications = [
            {
                location                = "North Europe"
                zone_redundancy_enabled = true
                tags                    = {}
            }
        ]
    }
}

aks = {
    aks1 = {
        name = "aks-1"
        resource_group_name = "rg-anjali"
        location = "West US"
        dns_prefix = "dns1"
        default_node_pool = [{
           name       = "default"
           node_count = 1
           vm_size    = "Standard_A2_v2"
        }]
        identity = [{
            type = "SystemAssigned"
        }]

    }
}

keys = {
  key1 = {
    name = "todo-key"
    resource_group_name = "rg-anjali"
    location = "West US"
    sku_name = "standard"
  }
}

secrets = {
  secret1 = {
    key_name = "todo-key"
    resource_group_name = "rg-anjali"
    secret_name = "sql-admin-user"
    secret_value = "anjaliadmin"
  }
  secret2 = {
    key_name = "todo-key"
    resource_group_name = "rg-anjali"
    secret_name = "sql-admin-password"
    secret_value = "anjali@12345"
  }
}
servers = {
  server1 = {
    name = "server123anji"
    location = "West US"
    resource_group_name = "rg-anjali"
    kv_name = "todo-key"
    secret_name = "sql-admin-user"
    secret_password = "sql-admin-password"
    version                      = "12.0"

  }
}

databases = {
  db1 = {
      name = "anjalidb121"
      server_name = "server123anji"
      resource_group_name = "rg-anjali"
      collation    = "SQL_Latin1_General_CP1_CI_AS"
      license_type = "LicenseIncluded"
      max_size_gb  = 2
      sku_name     = "S0"
      enclave_type = "VBS"
  }
}

