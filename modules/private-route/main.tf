
resource "aws_route_table" "PrivateRouteTable" {
  vpc_id = var.vpc_id_get

  route {
    cidr_block = var.private_route_destination
    gateway_id = var.nat_gateway
  }
  tags = {
    Name = var.private_route_name
  }
}

resource "aws_route_table_association" "PrivateSubnetRouteTableAssociation1" {
  count = length(var.private_subnet_cidr)
  subnet_id      = element(var.private_subnet_id, count.index)
  route_table_id = aws_route_table.PrivateRouteTable.id
}