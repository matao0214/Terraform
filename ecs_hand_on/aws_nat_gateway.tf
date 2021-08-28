resource "aws_nat_gateway" "handson-vpc-natgw-1" {
  allocation_id     = "eipalloc-0b3c91233eff37811"
  connectivity_type = "public"
  subnet_id         = var.pubric_subnet_1_id

  tags = {
    Name = "handson-vpc-natgw-1"
  }

  tags_all = {
    Name = "handson-vpc-natgw-1"
  }
}

resource "aws_nat_gateway" "handson-vpc-natgw-2" {
  allocation_id     = "eipalloc-0a9fd92bf68df800f"
  connectivity_type = "public"
  subnet_id         = var.pubric_subnet_2_id

  tags = {
    Name = "handson-vpc-natgw-2"
  }

  tags_all = {
    Name = "handson-vpc-natgw-2"
  }
}
