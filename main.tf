module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block

  vpc_enable_dns_support   = var.vpc_enable_dns_support
  vpc_enable_dns_hostnames = var.vpc_enable_dns_hostnames
  vpc_instance_tenancy     = var.vpc_instance_tenancy

}

module "public-subnet" {

  source         = "./modules/public-subnet"
  vpc_id_get         = module.vpc.vpc_id_get
  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_zone = var.public_subnet_zone

}

module "igw" {
  source = "./modules/igw"
  vpc_id_get = module.vpc.vpc_id_get
  igw_name   = var.igw_name
}

module "nat" {
  source = "./modules/nat"
  public_subnet_id = module.public-subnet.public_subnet_id
  nat_name   = var.nat_name
}

module "public-route" {
  source = "./modules/public-route"
  vpc_id_get= module.vpc.vpc_id_get
  public_route_destination=var.public_route_destination
  igw_id=module.igw.igw_id
  public_subnet_id=module.public-subnet.public_subnet_id
}

module "private-subnet" {

  source         = "./modules/private-subnet"
  vpc_id_get         = module.vpc.vpc_id_get
  private_subnet_cidr = var.private_subnet_cidr 
  private_subnet_zone = var.private_subnet_zone 

}

module "private-route" {
  source = "./modules/private-route"
  vpc_id_get= module.vpc.vpc_id_get
  private_route_destination=var.private_route_destination
  nat_gateway=module.nat.nat_gateway
  private_subnet_id=module.private-subnet.private_subnet_id
}


module "public-SG" {
 source = "./modules/public-SG"
 vpc_id_get= module.vpc.vpc_id_get
}

module "private-SG" {
 source = "./modules/private-SG"
 vpc_id_get= module.vpc.vpc_id_get
}

module "private-instance" {

source = "./modules/private-instance"
ami_id = var.ami_id
instance_type= var.instance_type
key_name= var.key_name
security_private_id = module.private-SG.security_private_id
private_subnet_id = module.private-subnet.private_subnet_id[*]

}

module "public-instance" {

source = "./modules/public-instance"
ami_id2 = var.ami_id2
instance_type2= var.instance_type2
key_name= var.key_name
security_bastion_id = module.public-SG.security_bastion_id
public_subnet_id = module.public-subnet.public_subnet_id

}