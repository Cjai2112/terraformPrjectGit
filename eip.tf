resource "aws_eip" "nat1" {
    depends_on = [aws_aws_internet_gateway.web-app-gateway]
  
}
resource "aws_eip" "nat2" {
    depends_on = [aws_aws_internet_gateway.web-app-gateway]
  
}