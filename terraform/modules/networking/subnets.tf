variable "public_subnets" {
  description = "Public subnets by availability zone"
  type        = map(string)
}

variable "private_subnets" {
  description = "Private subnets by availability zone"
  type        = map(string)
}

resource "aws_subnet" "public" {
  for_each = var.public_subnets

  vpc_id                  = aws_vpc.this.id
  cidr_block              = each.value
  availability_zone       = each.key
  map_public_ip_on_launch = true

  tags = {
    Name = "public-${each.key}"
    Tier = "public"
  }
}

resource "aws_subnet" "private" {
  for_each = var.private_subnets

  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value
  availability_zone = each.key

  tags = {
    Name = "private-${each.key}"
    Tier = "private"
  }
}