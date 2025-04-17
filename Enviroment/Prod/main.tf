module "rg" {
  source = "../../Modules/Rg"
  rg     = var.rg_details_prod
}

module "stg" {
  source     = "../../Modules/Storage_Account"
  stg        = var.stg_details_prod
  depends_on = [module.rg]
}

module "vnet" {
  source     = "../../Modules/Vnet"
  vnet       = var.vnet_details_prod
  depends_on = [module.stg]
}

module "subnet" {
  source     = "../../Modules/Subnet"
  subnet     = var.subnet_details_prod
  depends_on = [module.rg, module.vnet]

}

module "public_ip" {
  source     = "../../Modules/Public_IP"
  public_ip  = var.public_ip_details_prod
  depends_on = [module.subnet]
}

module "nic" {
  source     = "../../Modules/Nic"
  nic        = var.nic_details_prod
  depends_on = [module.rg, module.vnet, module.subnet]

}

module "vm" {
  source     = "../../Modules/Virtual_Machine"
  vm         = var.vm_details_prod
  depends_on = [module.rg, module.vnet, module.subnet, module.nic]

}

