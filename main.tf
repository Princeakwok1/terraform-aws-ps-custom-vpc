resource "aws_vpc" "vpc" {
    enable_dns_hostnames = true
    enable_dns_support = true
    cidr_block =var.vpc_cidr_block
    tags = merge(local.tags, {
        Name = var.resource_identifier
    })
}

resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.vpc.id
    tags = merge(local.tags, {
        Name = var.resource_identifier
    })
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(local.tags, {
    Name = var.resource_identifier
  })
}
