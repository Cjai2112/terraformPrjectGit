# ALB security group
resource "aws_security_group" "alb_sg" {
    name        = "vpc_alb_sg"
    description =  "Allow web inbound traffic"
    vpc_id      = aws_vpc.dev-vpc.id

    ingress {
        description            = "all traffic from vpc"
        from_port              = 0
        to_port                = 0
        protocol               ="-1"
        cidr_blocks            = ["0.0.0.0/0"]
    }

    egress {
        from_port              = 0
        to_port                = 0
        protocol               = "-1"
        cidr_blocks            = ["0.0.0.0/0"]

    }

    tags = {
        Name = "VPCALBSG"
    }
  
}