module "vpc-module" {
    source = "./vpc"
    customer = "shepl"
    env_name = "pro1"
    cidr_block_vpc = "10.10.0.0/16"
}

module "subnet" {
    source = "./subnets"
    customer = var.customer
    env_name = var.env_name
    cidr_block_public_subnet1 = var.cidr_block_public_subnet1
    # cidr_block_public_subnet2 = "10.10.1.0/24"
    my-vpc = module.vpc-module.my-vpc
}

module "ec2" {
    source = "./ec2"
    customer = var.customer
    env_name = var.env_name
    ec2-instance-type = "t2.micro"
    subnet-id = module.subnet.my-sub-id
    security-group = module.security-group.my-sg-id
}

module "security-group" {
    source = "./sc"
    customer = var.customer
    env_name = var.env_name
    my-vpc = module.vpc-module.my-vpc
}