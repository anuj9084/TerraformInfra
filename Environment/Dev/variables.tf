variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string))
  }))
}
variable "virtual_networks" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = optional(list(string))
    tags                = optional(map(string))
    subnets = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}
# variable "storage_account" {
#   type = map(object({
#     name                     = string
#     resource_group_name      = string
#     location                 = string
#     account_tier             = string
#     account_replication_type = string
#     tags                     = map(string)
#   }))
# }
# variable "storage_container" {
#   type = map(object({
#     name                  = string
#     storage_account_name  = string
#     container_access_type = string
#     resource_group_name   = string
#   }))
# }
# variable "network_interface" {
#   type = map(object({
#     name                 = string
#     subnet_name          = string
#     virtual_network_name = string
#     location             = string
#     resource_group_name  = string
#     tags                 = map(string)
#     ip_configurations = map(object({
#       name                          = string
#       private_ip_address_allocation = string
#     }))
#   }))
# }
# # variable "key_vault" {
# #   type = map(object({
# #     name                        = string
# #     location                    = string
# #     resource_group_name         = string
# #     enabled_for_disk_encryption = bool
# #     purge_protection_enabled    = bool
# #     sku_name                    = string
# #   }))
# # }
# # variable "secret" {
# #   type = map(object({
# #     name                = string
# #     value               = string
# #     key_vault_name      = string
# #     resource_group_name = string

# #   }))
# # }
# variable "nsg" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     tags                = map(string)
#     security_rule = map(object({
#       name                       = string
#       priority                   = number
#       direction                  = string
#       access                     = string
#       protocol                   = string
#       source_port_range          = string
#       destination_port_range     = string
#       source_address_prefix      = string
#       destination_address_prefix = string
#     }))
#   }))
# }
# variable "subnet_nsg_associations" {
#   type = map(object({
#     subnet_name          = string
#     virtual_network_name = string
#     resource_group_name  = string
#     nsg_key              = string
#   }))
# }
# variable "vms" {
#   type = map(object({
#     virtual_machine_name   = string
#     location               = string
#     resource_group_name    = string
#     vm_size                = string
#     network_interface_name = string

#     storage_image_reference = object({
#       publisher = string
#       offer     = string
#       sku       = string
#       version   = string
#     })

#     storage_os_disk = object({
#       disk_name         = string
#       caching           = string
#       create_option     = string
#       managed_disk_type = string
#     })

#     os_profile = object({
#       computer_name  = string
#       admin_username = string
#       admin_password = string
#     })

#     os_profile_linux_config = object({
#       disable_password_authentication = bool
#     })
#     tags = map(string)
#   }))
# }
