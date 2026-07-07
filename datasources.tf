data "aws_availability_zones" listof_azs {
    state = "available"
}

data "aws_ami"  "amazon_linux" {
  owners = ["amazon"]
  most_recent = true
  name_regex = "Amazon Linux*" 
  filter {
    name = "architecture"
    values = ["x86_64"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "root-device-type"
    values = ["ebs"]
  }


}