resource "aws_flow_log" "flow-log-test" {
    log_destination  = aws_s3_bucket.chay.arn
    log_destination_type  = "s3"
    traffic_type = "ALL"
    vpc_id       = aws_vpc.dev-vpc.id
  
}

resource "aws_s3_bucket" "chay" {
    bucket = "chay"
  
}