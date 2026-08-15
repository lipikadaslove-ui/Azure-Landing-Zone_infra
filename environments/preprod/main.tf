module "resource_group" {
  source = "../../modules/azurerm_resource_group"
rg = var.rg
}
module "virtual_network" {
    source = "../../modules/azurerm_virtual_network"
    vnet = var.vnet
     depends_on = [
    module.resource_group
  ]
}
module "subnet" {
    source = "../../modules/azurerm_subnet"
    subnet =var.subnet
      depends_on = [
    module.virtual_network
  ]
}
module "public_ip" {
    source = "../../modules/azurerm_public_ip"
   pips = var.pips
   depends_on = [
    module.resource_group
  ]
}
module "virtual_machine" {
    source = "../../modules/azurerm_virtual_machine"
  vms = var.vms
  subnet_ids    = module.subnet.subnet_ids
  public_ip_ids = module.public_ip.public_ip_ids
   depends_on = [
    module.subnet,
    module.public_ip
  ]
}
module "vnet_peering" {
  source = "../../modules/azurerm_vnet_peering"

  peerings = var.peerings

  depends_on = [
    module.virtual_network
  ]
}
module "bastion" {

  source = "../../modules/azurerm_bastion"

  bastion = var.bastion

  public_ip_ids = module.public_ip.public_ip_ids

  depends_on = [
    module.subnet,
    module.public_ip
  ]
}
