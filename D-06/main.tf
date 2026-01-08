provider "aws" {
    region = "ap-southeast-1"
  
}


variable "ami" {
  description = "This is a ami"
}

variable "instance_type" {
  description = "This is a instance type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "stage" = "t3.small"
    "prod" = "t2.micro"
  }
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
  
}