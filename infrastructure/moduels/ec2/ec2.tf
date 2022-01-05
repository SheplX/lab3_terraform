resource "aws_instance" "ec2" {
    count = var.create-ec2 ? 1:0
    ami = "ami-002068ed284fb165b"
    instance_type = "t2.micro"
    subnet_id = var.subnet-id
    vpc_security_group_ids = [var.security-group]


    tags = {
       Name = upper("${var.customer}-${var.env_name}-vpc")
    }
}