variable "vpc_cidr" {
    type = string
}

variable "public_subnets" {
    description = "Public subnets for DEV"
    type        = map(string)
}

variable "private_subnets" {
    description = "Private subnets for DEV"
    type        = map(string)
}