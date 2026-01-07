output "Ec2_publicip" {
    value = aws_instance.example.public_ip
  
}