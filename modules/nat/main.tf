# Elastic IP

resource "aws_eip" "elasticip" {
  domain = "vpc"
}

# NAT Gateway

resource "aws_nat_gateway" "vault-nat" {
  allocation_id = aws_eip.elasticip.id
  subnet_id = var.public_subnet_id

  tags = {
    Name = var.nat_name
  }
}
