resource "aws_lb" "php_sample" {
  drop_invalid_header_fields = "false"
  enable_deletion_protection = "false"
  enable_http2               = "true"
  idle_timeout               = "60"
  internal                   = "false"
  ip_address_type            = "ipv4"
  load_balancer_type         = "application"
  name                       = "php-sample"
  security_groups            = [var.sg_default, var.sg_alb]

  subnet_mapping {
    subnet_id = var.pubric_subnet_1_id
  }

  subnet_mapping {
    subnet_id = var.pubric_subnet_2_id
  }

  subnets = [var.pubric_subnet_1_id, var.pubric_subnet_2_id]
}
