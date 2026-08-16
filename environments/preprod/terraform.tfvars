 rg ={
 "rg1" = {
    name     = "rg-23"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg-23-1"
    location = "centralindia"
  }
 }
  vnet = {
    vnet1 = {
        name                = "vnet-23"
        location            = "centralindia"
        resource_group_name = "rg-23"
        address_space       = ["10.0.0.0/16"]
    }
    vnet2 = {
        name                = "vnet-23-1"
        location            = "centralindia"
        resource_group_name = "rg-23"
        address_space       = ["10.1.0.0/16"]
}
  }
subnet = {
  "subnet1" = {
    name                = "FrontendSubnet"
    location            = "centralindia"
    resource_group_name = "rg-23"
    virtual_network_name = "vnet-23"
    address_prefixes     = ["10.0.1.0/24"]
  }
 "subnet2" = {
    name                = "BackendSubnet"
    location            = "centralindia"
    resource_group_name = "rg-23"
    virtual_network_name = "vnet-23"
    address_prefixes     = ["10.0.2.0/24"]
}
"subnet3" ={
    name                = "FrontendSubnet-1"
    location            = "centralindia"
    resource_group_name = "rg-23"
    virtual_network_name = "vnet-23-1"
    address_prefixes     = ["10.1.1.0/24"]
}
"subnet4" ={
    name                = "BackendSubnet-1"
    location            = "centralindia"
    resource_group_name = "rg-23"
    virtual_network_name = "vnet-23-1"
    address_prefixes     = ["10.1.2.0/24"]
}
subnet5 ={
    name                = "AzureBastionSubnet"
    location            = "centralindia"
    resource_group_name = "rg-23"
    virtual_network_name = "vnet-23-1"
    address_prefixes     = ["10.1.3.0/24"]
}
}
pips = {
    "pip1" = {
        name                = "frontend-pip"
        location            = "centralindia"
        resource_group_name = "rg-23"
        allocation_method   = "Static"
    }
    pip2 = {
        name                = "backend-pip"
        location            = "centralindia"
        resource_group_name = "rg-23"
        allocation_method   = "Static"
    }
     bastion-pip = {
    name                = "bastion-pip"
    location            = "centralindia"
    resource_group_name = "rg-23"
    allocation_method   = "Static"
  }
    
}
 vms ={
    "vm1" = {
        nic_name            = "Frontend-vm-nic"
        location            = "centralindia"
        rg_name             = "rg-23"
        nic_subnet_name      = "FrontendSubnet"
        nic_vnet_name       = "vnet-23"
        nic_public_ip_name  = "frontend-pip"
        vm_name              = "Frontend-vm"
        vm_size             = "standard_D4_v5"
        admin_username      = "lipi123"
        admin_password      = "Lipi@123"
    }
    vm2 = {
        nic_name            = "backend-vm-nic"
        location            = "centralindia"
        rg_name             = "rg-23"
        nic_subnet_name      = "BackendSubnet"
        nic_vnet_name       = "vnet-23"
        nic_public_ip_name  = "backend-pip"
        vm_name              = "Backend-vm"
        vm_size             = "standard_D4_v5"
        admin_username      = "lipi123"
        admin_password      = "Lipi@123"
    }
}
peerings = {

  peer1 = {
    name                 = "vnet-23-to-vnet-23-1"
    resource_group_name  = "rg-23"
    virtual_network_name = "vnet-23"
    remote_vnet_name     = "vnet-23-1"
  }

  peer2 = {
    name                 = "vnet-23-1-to-vnet-23"
    resource_group_name  = "rg-23"
    virtual_network_name = "vnet-23-1"
    remote_vnet_name     = "vnet-23"
  }

}
bastion = {

  bastion1 = {

    name                 = "bastion-vnet23-1"
    location             = "centralindia"
    resource_group_name  = "rg-23"

    subnet_name          = "AzureBastionSubnet"
    virtual_network_name = "vnet-23-1"

    public_ip_name       = "bastion-pip"

  }

}

