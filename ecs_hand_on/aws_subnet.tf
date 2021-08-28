resource "aws_subnet" "public_subnet_1" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.1.0.0/24"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "Public subnet"
  }

  tags_all = {
    Name = "Public subnet"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "public_subnet_2" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.1.2.0/24"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "Public subnet 2"
  }

  tags_all = {
    Name = "Public subnet 2"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_subnet_1" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.1.1.0/24"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "Private subnet"
  }

  tags_all = {
    Name = "Private subnet"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_subnet_2" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "10.1.3.0/24"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "Private subnet 2"
  }

  tags_all = {
    Name = "Private subnet 2"
  }

  vpc_id = var.vpc_id
}
