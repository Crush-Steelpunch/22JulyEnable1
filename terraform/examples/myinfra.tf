terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}


resource "aws_instance" "tf-instance" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  key_name      = "22Julyenable1-Lon"
  # security group?
  // single line comment
  /* Multi
    line
    block
    comment
    */
  security_groups = ["AutoScaling-Security-Group-1","My key 2", "key3", "masterkey"]
}

output "PublicIP" {
  value = aws_instance.tf-instance.public_ip
}