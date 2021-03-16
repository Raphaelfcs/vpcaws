resource "aws_vpc_endpoint" "s3" {
  vpc_id       = "${aws_vpc.vpc.id}"
  service_name = "com.amazonaws.us-east-1.s3"
  depends_on   = ["aws_vpc.vpc"]
}

resource "aws_vpc_endpoint" "dynamodb" {
  vpc_id       = "${aws_vpc.vpc.id}"
  service_name = "com.amazonaws.us-east-1.dynamodb"
  depends_on   = ["aws_vpc.vpc"]
}
