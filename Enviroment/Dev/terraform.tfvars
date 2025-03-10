rg_details = {
  rg1 = {
    name     = "jelectric_rg"
    location = "centralindia"
  }
}

stg_details = {
  stg1 = {
    name                     = "jelectricstg"
    resource_group_name      = "jelectric_rg"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_details = {
  vnet1 = {
    name                = "jelectric_vnet"
    location            = "centralindia"
    resource_group_name = "jelectric_rg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_details = {
  subnet1 = {
    name                 = "jelectric_subnet"
    resource_group_name  = "jelectric_rg"
    virtual_network_name = "jelectric_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

public_ip_details = {
  public_ip1 = {
    name                = "jelectric_public_ip"
    resource_group_name = "jelectric_rg"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}  

nic_details = {
  nic1 = {
    name                = "jelectric_nic"
    resource_group_name = "jelectric_rg"
    vnet_name = "jelectric_vnet"
    subnet_name         = "jelectric_subnet"
    location            = "centralindia"

     }
}

vm_details = {
  vm1 = {
    name                = "jelectricvm"
    resource_group_name = "jelectric_rg"
    vnet_name = "jelectric_vnet"
    subnet_name         = "jelectric_subnet"
    location            = "centralindia"
    size                = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "Password@123"
    nic_name            = "jelectric_nic"

  }


}