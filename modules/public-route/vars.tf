variable "vpc_id_get" {
    type = string
    default = ""
}

variable "public_route_destination" {
    type = string
    default = "0.0.0.0/0"
}

variable "igw_id" {
  default = ""
}

variable "public_route_name" {
  default = "vault-public-route"
}

variable "public_subnet_id" {
type = string
default     = "" 
}
