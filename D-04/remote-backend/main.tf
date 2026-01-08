provider "aws" {
    region = "ap-southeast-1"
  
}

resource "aws_instance" "app_server" {
  ami           = "ami-00d8fc944fb171e29"
  instance_type = "t3.micro"
  key_name = "ubuntu-vm" 

  tags = {
    Name = "Terraform Demo"
  }
}

/*resource "aws_s3_bucket" "my_bucket" {
  bucket = "yuthikavj-mybucket-2002"
  
}*/

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  
}
