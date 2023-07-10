resource "aws_internet_gateway" "vault-igw" {
  vpc_id = var.vpc_id_get
  tags = {
    Name = var.igw_name
  }
}