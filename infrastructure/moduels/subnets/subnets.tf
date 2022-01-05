resource "aws_subnet" "public1" {
  count      = length (var.cidr_block_public_subnet1)
  vpc_id     = var.my-vpc
  cidr_block = var.cidr_block_public_subnet1[count.index]

  tags = {
    Name = upper("${var.customer}-${var.env_name}-vpc")
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = var.my-vpc
  cidr_block = var.cidr_block_public_subnet2

  tags = {
    Name = lower("${var.customer}-${var.env_name}-vpc")
  }
}