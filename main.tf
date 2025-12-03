resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "terraform-vpc-${var.environment}"
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${var.environment}"
  }
}

resource "aws_instance" "server" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (change if needed)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  key_name      = var.key_name

  tags = {
    Name = "terraform-ec2-${var.environment}"
  }
}
