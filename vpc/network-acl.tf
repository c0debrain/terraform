resource "aws_network_acl" "uno-vpc-network-acl" {
    vpc_id = "${aws_vpc.uno-vpc.id}"
    subnet_ids = ["${aws_subnet.uno-vpc-subnet1.id}", "${aws_subnet.uno-vpc-subnet2.id}"]
    
    egress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    ingress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    tags = {
        Name = "uno-vpc-network-acl"
    }
}

