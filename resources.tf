resource "aws_vpc" "environment-example-two" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
<<<<<<< HEAD
  tags = {
    Name = "terrform-aws-vpc-example-two"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block        = "${cidrsubnet(aws_vpc.environment-example-two.cidr_block, 3, 1)}"
  vpc_id            = "${aws_vpc.environment-example-two.id}"
  availability_zone = "us-east-1a"
}
resource "aws_subnet" "subnet2" {
  cidr_block        = "${cidrsubnet(aws_vpc.environment-example-two.cidr_block, 2, 2)}"
  vpc_id            = "${aws_vpc.environment-example-two.id}"
  availability_zone = "us-east-1b"
}




=======
  tags {
    Name = "terraform-aws-vpc-example-two"
  }
}

>>>>>>> d5057923963ad03c9fbcadcf27415ef3674e6a3f
