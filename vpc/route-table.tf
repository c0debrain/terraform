resource "aws_route_table" "uno-vpc-route-table" {
  vpc_id = "${aws_vpc.uno-vpc.id}"

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = "${aws_internet_gateway.uno-vpc-internet-gateway.id}"
  }

  tags = {
    Name = "uno-vpc-route-table"
  }
}

resource "aws_route_table_association" "uno-vpc-route-table-association1" {
  subnet_id      = "${aws_subnet.uno-vpc-subnet1.id}"
  route_table_id = "${aws_route_table.uno-vpc-route-table.id}"
}

resource "aws_route_table_association" "uno-vpc-route-table-association2" {
  subnet_id      = "${aws_subnet.uno-vpc-subnet2.id}"
  route_table_id = "${aws_route_table.uno-vpc-route-table.id}"
}