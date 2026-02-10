resource_groups = {
  "rg1" = {
    name     = "rg_1"
    location = "East US"
    tags = {
      environment = "Dev"
    }
  }
}
virtual_networks = {
  "vnet" = {
    name                = "vnet1"
    location            = "East US"
    resource_group_name = "rg_1"
    address_space       = ["10.0.0.0/16"]
    tags = {
      environment = "Dev"
    }
    subnets = {
      subnets1 = {
        name             = "subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnets2 = {
        name             = "subnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
      subnet3 = {
        name             = "subnet3"
        address_prefixes = ["10.0.3.0/24"]
      }
    }
  }
}
# storage_account = {
#   "st1" = {
#     name                     = "anujstoragestrstr1212"
#     resource_group_name      = "rg_1"
#     location                 = "East US"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#     tags = {
#       environment = "Dev"
#     }
#   }
# }
# storage_container = {
#   "container" = {
#     name                  = "anujcontainer"
#     container_access_type = "private"
#     resource_group_name   = "rg_1"
#     storage_account_name  = "anujstoragestrstr1212"
#   }
# }
# network_interface = {
#   "netifc1" = {
#     name                 = "netifc1"
#     subnet_name          = "subnet1"
#     virtual_network_name = "vnet1"
#     location             = "East US"
#     resource_group_name  = "rg_1"
#     tags = {
#       environment = "Dev"
#     }
#     ip_configurations = {
#       ipconfig1 = {
#         name                          = "ipconfig1"
#         private_ip_address_allocation = "Dynamic"
#       }
#     }
#   }
#   netifc2 = {
#     name                 = "netifc2"
#     subnet_name          = "subnet2"
#     virtual_network_name = "vnet1"
#     location             = "East US"
#     resource_group_name  = "rg_1"
#     tags = {
#       environment = "Dev"
#     }
#     ip_configurations = {
#       ipconfig1 = {
#         name                          = "ipconfig2"
#         private_ip_address_allocation = "Dynamic"
#       }
#     }
#   }
# }
# key_vault = {
#   "kv1" = {
#     name                        = "dhurandhar-129indian"
#     location                    = "East US"
#     resource_group_name         = "rg_1"
#     enabled_for_disk_encryption = false
#     purge_protection_enabled    = false
#     sku_name                    = "standard"

#   }
# }
# secret = {
#   "admin_usrnm" = {
#     name                = "vmadmin-name"
#     value               = "anujsoamvm"
#     key_vault_name      = "dhurandhar-129indian"
#     resource_group_name = "rg_1"
#   }
#   "vm_password" = {
#     name                = "vm-unlock"
#     value               = "Anuj@1234"
#     key_vault_name      = "dhurandhar-129indian"
#     resource_group_name = "rg_1"
#   }
# }
# nsg = {
#   subnetnsg1 = {
#     name                = "mynsg1"
#     location            = "East US"
#     resource_group_name = "rg_1"
#     tags = {
#       environment = "Dev"
#     }
#     security_rule = {
#       newrules = {
#         name                       = "preventionrules"
#         priority                   = 110
#         direction                  = "Inbound"
#         access                     = "Allow"
#         protocol                   = "Tcp"
#         source_port_range          = "*"
#         destination_port_range     = "*"
#         source_address_prefix      = "*"
#         destination_address_prefix = "*"
#       }
#     }
#   }
# }
# subnet_nsg_associations = {
#   subnetnsg1 = {
#     subnet_name          = "subnet1"
#     virtual_network_name = "vnet1"
#     resource_group_name  = "rg_1"
#     nsg_key              = "subnetnsg1"
#   }
# }
# vms = {
#   vm1 = {
#     virtual_machine_name   = "vm1"
#     location               = "East US"
#     resource_group_name    = "rg_1"
#     vm_size                = "Standard_DS1_v2"
#     network_interface_name = "netifc1"
#     storage_image_reference = {
#       publisher = "Canonical"
#       offer     = "UbuntuServer"
#       sku       = "18.04-LTS"
#       version   = "latest"
#     }
#     storage_os_disk = {
#       disk_name         = "vm1osdisk"
#       caching           = "ReadWrite"
#       create_option     = "FromImage"
#       managed_disk_type = "Standard_LRS"
#     }
#     os_profile = {
#       computer_name  = "vm1hostname"
#       admin_username = "vmadmin"
#       admin_password = "Anuj@1234"
#     }
#     os_profile_linux_config = {
#       disable_password_authentication = false
#     }
#     tags = {
#       environment = "Dev"
#     }
#   }
# }
