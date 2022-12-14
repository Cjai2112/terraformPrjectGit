# Loadbalancer Creation

resource "aws_lb" "web-alb" {
  name            = "web-alb"
  internal        = false
  load_balancer_type  = false
  securiity_groups = [aws_security_group.alb-sg.id]
  subnet          = [aws_subnet.public-subnet-1.id,aws_subnet.public-subnet-2.id]

}

resource "aws_lb_target_group" "alb-target-group" {
  name          ="alb -target-group"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.dev.vpc_id
}

resource "aws_lb_listener" "alb_listener" {
    load_balancer_arn = aws_lb.web-alb.arn
    port = 80
    protocol = "HTTP"
  default_action {
    type       = "forward"
    target_group_arn = aws_lb_target_group.alb-target-group.arn
    }
  }