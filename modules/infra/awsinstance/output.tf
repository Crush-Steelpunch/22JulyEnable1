output "awsinstanceip" {
  value = aws_instance.tf-instance.public_ip
}