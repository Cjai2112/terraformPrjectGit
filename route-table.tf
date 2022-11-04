resource "aws_route_table" "public-route-table" {
    vpc_id = aws_vpc.dev-vpc_id

route {
    cidr_block ="0.0.0.0/0"
    gateway_id = aws_internet_gateway.web-app-gateway.id
}
tags = {
    Name = "public"
  }
}

resource "aws_route_table" "private1" {
  vpc_id = aws_vpc.dev-vpc.id

route { 
    cidr_block = "0.0.0./0"
    nat_gateway_id = aws_nat_gateway.gw1.id
 }
tags = {
    Name = "Private1"
 }
}

resource "aws_route_table" "private2" {
  vpc_id = aws_vpc.dev-vpc.id

route { 
    cidr_block = "0.0.0./0"
    nat_gateway_id = aws_nat_gateway.gw2.id
 }
tags = {
    Name = "Private2"
 }
}
resource "aws_route_table" "private3" {
  vpc_id = aws_vpc.dev-vpc.id

route { 
    cidr_block = "0.0.0./0"
    nat_gateway_id = aws_nat_gateway.gw3.id
 }
tags = {
    Name = "Private3"
 }
}

resource "aws_route_table" "private4" {
  vpc_id = aws_vpc.dev-vpc.id

route { 
    cidr_block = "0.0.0./0"
    nat_gateway_id = aws_nat_gateway.gw4.id
 }
tags = {
    Name = "Private4"
 }
}
