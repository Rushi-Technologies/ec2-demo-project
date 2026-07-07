variable "aws_region" {
    type = string
    description = "AWS Region to deploy resources"
    default = "ap-south-1"
}


variable "instance_type" {
    type = string
    description = "EC2 instance type"
    default = "t2.micro"
}

variable "common_tags" {
    type = map(string)
    description = "Tags to apply to the EC2 instance"
    default = {
        ManagedBy = "Terraform"
        Project = "OrderManagementSystem"
    }
}

variable "instance_count" {
    type = number
    description = "Number of EC2 instances to create"
    default = 1
}

variable "create_ec2_instance" {
    type = bool
    description = "Whether to create the EC2 instance or not"
    default = true
}
