resource "aws_instance" "test" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [var.sg]
  tags = {
    Name = "Terraform Demo"
  }
}