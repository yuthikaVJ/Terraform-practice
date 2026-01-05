
provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-00d8fc944fb171e29"
  instance_type = "t3.micro"
  key_name = "ubuntu-vm" 

  tags = {
    Name = "Terraform Demo"
  }

}