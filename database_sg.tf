#database security group
# allows application to access RDS instances
resource "aws_security_group" "rds-sg" {
    name             = "RDSSG"
  description = "Allow application to access the RDS instance"

  ingress {
    description = "EC2 to MYSQL"
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    security_groups = ["aws_security_group.ec2-sg.id"]

  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "Name" = "RDSSG"
  }
}

#opens port 3306 for inbound and all ports for outbound.