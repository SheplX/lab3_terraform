variable "customer" {
    type = string
}

variable "env_name" {
    type = string
}

variable "subnet-id" {
    type = string
}

variable "security-group" {
    type = string
}


variable "create-ec2" {
    type = bool
    default = true
}