provider "aws" {
  region = "ap-southeast-1"
}

provider "vault" {
  address = "<>:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "<>"
      secret_id = "<>"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
    ami = "ami-00d8fc944fb171e29"
    instance_type = "t3.micro"

    tags = {
      Name = data.vault_kv_secret_v2.example.data["username"]
    }
  
}
