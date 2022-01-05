resource "aws_security_group" "main" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.my-vpc


  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
       Name = "${var.customer}-${var.env_name}-sg"
  }
}