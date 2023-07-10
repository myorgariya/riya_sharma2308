variable "vpc_id_get" {
    type = string
    default = ""
}

variable "private_route_destination" {
    type = string
    default = "0.0.0.0/0"
}

variable "nat_gateway" {
  default = ""
}

variable "private_route_name" {
    type = string
    default = "vault-private-route"
}

variable "private_subnet_id" {
type = list(string)
default     = []
}


variable "private_subnet_cidr" {
type = list(string)
default     = ["17.0.9.0/24", "17.0.4.0/24"]
}
