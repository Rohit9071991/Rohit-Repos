rg_details_prod = {
  rg1 = {
    name     = "jelectric_rg1"
    location = "centralindia"
  }
}

stg_details_prod = {
  stg1 = {
    name                     = "jelectricstg1"
    resource_group_name      = "jelectric_rg1"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_details_prod = {
  vnet1 = {
    name                = "jelectric_vnet1"
    location            = "centralindia"
    resource_group_name = "jelectric_rg1"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_details_prod = {
  subnet1 = {
    name                 = "jelectric_subnet1"
    resource_group_name  = "jelectric_rg1"
    virtual_network_name = "jelectric_vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

public_ip_details_prod = {
  public_ip1 = {
    name                = "jelectric_public_ip1"
    resource_group_name = "jelectric_rg1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

nic_details_prod = {
  nic1 = {
    name                = "jelectric_nic1"
    resource_group_name = "jelectric_rg1"
    vnet_name           = "jelectric_vnet1"
    subnet_name         = "jelectric_subnet1"
    location            = "centralindia"

  }
}

vm_details_prod = {
  vm1 = {
    name                = "jelectricvm1"
    resource_group_name = "jelectric_rg1"
    vnet_name           = "jelectric_vnet1"
    subnet_name         = "jelectric_subnet1"
    location            = "centralindia"
    size                = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "Password@123"
    nic_name            = "jelectric_nic1"

  }


}