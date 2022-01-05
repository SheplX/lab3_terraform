variable "customer" {
    type = string
}

variable "env_name" {
    type = string
}

variable "cidr_block_public_subnet1" {
    type = list
    default = ["10.0.0.0/16","10.1.0.0/16","10.2.0.0/16","10.3.0.0/16"]
}

variable "cidr_block_public_subnet2" {
    type = string
}
variable "my-vpc" {
    type = string
}