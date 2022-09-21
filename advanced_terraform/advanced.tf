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
  instance_type = "${var.inst_type}"
  key_name      = "22Julyenable1-Lon"
  security_groups = ["AutoScaling-Security-Group-1"]
  root_block_device { volume_size = "${var.eph_block_size}"}
  
  }