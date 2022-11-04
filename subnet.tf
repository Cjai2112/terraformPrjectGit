#first web subnet 
resource "aws_subnet" "public-subnet-1" {
    vpc_id                  = aws_vpc.dev-vpc.id
    cidr_block              = var.subnet_prefix [0].cidr_block
    map_public_ip_on_launch = true
    availability_zone       = "eu-east-1a"

    tag = {
        Name = var.subnet_prefix[0].name
    }
  
}

#Second web subnet
resource "aws_subnet" "public-subnet-2" {
    vpc_id                  = aws_vpc.dev-vpc.id
    cidr_block              = var.subnet_prefix [1].cidr_block
    map_public_ip_on_launch = true
    availability_zone       = "eu-east-1b"

    tag = {
        Name = var.subnet_prefix[1].name
    }   
}

#first application subnet
resource "aws_subnet" "application-subnet-1" {
    vpc_id                  = aws_vpc.dev-vpc.id
    cidr_block              = var.subnet_prefix [2].cidr_block
    map_public_ip_on_launch = false
    availability_zone       = "eu-east-1a"

    tag = {
        Name = var.subnet_prefix[2].name
    }   
}

#second application subnet
resource "aws_subnet" "application-subnet-2" {
    vpc_id                  = aws_vpc.dev-vpc.id
    cidr_block              = var.subnet_prefix [3].cidr_block
    map_public_ip_on_launch = false
    availability_zone       = "eu-east-1b"

    tag = {
        Name = var.subnet_prefix[3].name
    }   
}

#first Database private subnet
resource "aws_subnet" "database-subnet-1" {
    vpc_id                  = aws_vpc.dev-vpc.id
    cidr_block              = var.subnet_prefix [4].cidr_block
    availability_zone       = "eu-east-1a"

    tag = {
        Name = var.subnet_prefix[4].name
    }   
}

#second Database private subnet
resource "aws_subnet" "database-subnet-2" {
    vpc_id                  = aws_vpc.dev-vpc.id
    cidr_block              = var.subnet_prefix [5].cidr_block
    availability_zone       = "eu-east-1b"

    tag = {
        Name = var.subnet_prefix[5].name
    }   
}