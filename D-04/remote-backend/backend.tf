terraform {
  backend "s3" {
    bucket = "yuthikavj-mybucket-2002"
    key    = "yuthika/terraform.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "terraform-locks"
    
  }
}