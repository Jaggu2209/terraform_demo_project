module "aws_vpc" {
    source = "../../modules/VPC"
    vpc_name = "Production VPC"
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    region = data.aws_region.current.region
    tags = {
        Name = "Production VPC"
    }
}
