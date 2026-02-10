module "resource_groups" {
  source          = "../../Resource Group"
  resource_groups = var.resource_groups
}
module "virtual_networks" {
  source           = "../../Vnet"
  virtual_networks = var.virtual_networks
  depends_on       = [module.resource_groups]
}
# module "storage_account" {
#   source          = "../../StorageAccount"
#   storage_account = var.storage_account
#   depends_on      = [module.resource_groups]
# }
# module "storage_container" {
#   source            = "../../storageContainer"
#   storage_container = var.storage_container
#   depends_on        = [module.storage_account]
# }
# module "network_interface" {
#   source            = "../../networkinterface"
#   network_interface = var.network_interface
#   depends_on        = [module.virtual_networks]
# }
# # module "key_vault" {
# #   source    = "../../keyvault"
# #   key_vault = var.key_vault
# # }
# # module "secret" {
# #   source     = "../../Secret"
# #   secret     = var.secret
# #   depends_on = [module.key_vault]
# # }
# module "nsg" {
#   source                  = "../../Nsg"
#   nsg                     = var.nsg
#   subnet_nsg_associations = var.subnet_nsg_associations
#   depends_on              = [module.virtual_networks]
# }
# module "compute" {
#   source     = "../../Compute"
#   vms        = var.vms
#   depends_on = [module.network_interface]
# }
