resource "aws_vpc" "uno-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  
  tags = {
    Name = "uno-vpc"
  }
}

output "id" {
  value = "${aws_vpc.uno-vpc.id}"
}