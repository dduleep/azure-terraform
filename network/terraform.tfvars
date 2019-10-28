vnet_name = "qr"
resource_group_name = "terraform-network-rg"
location = "westeurope"
tags = {
Environment = "Production"
}
subnets ={
    #"subnet_name" = "addresssspace"
    "HR"        = "10.0.1.0/24"
    "Finance"   = "10.0.2.0/24"
    "IT"        = "10.0.3.0/24"

}
