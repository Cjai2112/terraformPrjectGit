resource "aws_vpc" "dev_vpc" {
    cidr_block = "10.123.0.0/16"
    instance_tenancy = "default"

    tags = { 
        Name = "dev" 
    }
}