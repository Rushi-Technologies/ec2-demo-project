terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "rushitech-terraform-statefiles"
    key = "ec2-demo/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true
  }
}