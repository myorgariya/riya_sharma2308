variable "private_subnet_cidr" {
type = list(string)
default     = ["17.0.9.0/24", "17.0.4.0/24"]
}

variable "private_subnet_zone" {
type = list(string)
default     = ["ap-south-1a", "ap-south-1b"]
}

variable "vpc_id_get" {
    type = string
    default = ""
}