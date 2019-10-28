variable "vnet_name" {
  description = "Name of the virtual network to create"
  default     = "dpt-vnet"
}

variable "resource_group_name" {
  description = "resource group name that the network will be created "
  default     = "dept-rg"
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
}

variable "address_space" {
  description = "Virtual network address space."
  default     = "10.0.0.0/16"
}

# If no values specified, this defaults to Azure DNS 
variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  default     = []
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  default     = ["10.0.1.0/24"]
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  default     = ["subnet1"]
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = "map"

  default = {
    tag1 = ""
    tag2 = ""
  }
}

variable "subnets" {
  description = "subnets name with associate subnet address space name=\"subnet_address_space\""
  type        = "map"
  default     = {
    subnet1 = "10.0.1.0/24"
    subnet2 = "10.0.2.0/24"
  }

}