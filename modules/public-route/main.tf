# Rouing Table Public

resource "aws_route_table" "PublicRouteTable" {
  vpc_id = var.vpc_id_get

  route {
    cidr_block = var.public_route_destination
    gateway_id = var.igw_id
  }
  tags = {
    Name = var.public_route_name
  }
}

resource "aws_route_table_association" "PublicSubnetRouteTableAssociation1" {
 
  subnet_id      = var.public_subnet_id  
  route_table_id = aws_route_table.PublicRouteTable.id
}