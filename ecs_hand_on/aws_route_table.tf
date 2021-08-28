resource "aws_route_table" "handson-vpc-route-table" {
  vpc_id = var.vpc_id
}

resource "aws_route_table" "handson-vpc-public-route-table" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0268dbaef7648b869"
  }

  tags = {
    Name = "handson-vpc-public-route-table"
  }

  tags_all = {
    Name = "handson-vpc-public-route-table"
  }

  vpc_id = var.vpc_id
}

resource "aws_route_table" "handson-vpc-private-route-table-1" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gw_1_id
  }

  tags = {
    Name = "handson-vpc-private-route-table-1"
  }

  tags_all = {
    Name = "handson-vpc-private-route-table-1"
  }

  vpc_id = var.vpc_id
}

resource "aws_route_table" "handson-vpc-private-route-table-2" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gw_2_id
  }

  tags = {
    Name = "handson-vpc-private-route-table-2"
  }

  tags_all = {
    Name = "handson-vpc-private-route-table-2"
  }

  vpc_id = var.vpc_id
}
