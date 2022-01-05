output "my-vpc" {
    value = aws_vpc.main.id
}

output "cidr_block_vpc" {
    value = aws_vpc.main.cidr_block
}