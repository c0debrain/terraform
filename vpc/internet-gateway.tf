resource "aws_internet_gateway" "uno-vpc-internet-gateway" {
  vpc_id = "${aws_vpc.uno-vpc.id}"

  tags = {
    Name = "uno-vpc-internet-gateway"
  }
}