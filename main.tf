locals {
  common_tags = {
    company        = "xyz"
    product        = "rty"
    functionality  = "tetsing"
    product_owner  = "mnbhh"
    technicalowner = "fghj"
    backup         = "True"
    testing        = "True"
  }
}
resource "aws_vpc" "terraform-vpc" {
  cidr_block = var.vpc_cidr #mandatory
  tags       = local.common_tags
}

resource "aws_instance" "terraform-ec2" {
  instance_type = var.ec2type["dev"]
  ami           = data.aws_ami.ec2ami.id
  #count         = var.ec2count
  user_data = file("installhttpd.sh")
}
/*resource "aws_instance" "terraform1-ec2" {
  instance_type = var.ec2type["dev"]
  ami           = var.ec2ami
  #count         = var.ec2count
}*/

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = var.public_cidr
  tags       = local.common_tags
}
