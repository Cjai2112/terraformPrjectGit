# Internet gateway 

resource "aws_internet_gateway" "web-app-gateway" {
    vpc_id = aws_vpc.dev-vpc.id

    tags = {
      "Name" = "web app gateway"
    }
  
}
