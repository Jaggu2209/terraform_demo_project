resource "aws_instance" "ec2_example" {
    ami           = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"
    tags = {
      Name = "EC2 Instance with remote state 2"
    }
}

module "aws_vpc" {
    source = "../modules/VPC"
    vpc_name = "Production VPC"
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    region = data.aws_region.current.region
    tags = {
        Name = "Production VPC"
    }
}


data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}