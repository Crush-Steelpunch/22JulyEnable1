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


provider "aws" {
  region = "eu-west-1"
  alias = "aws-roi"
}

resource "aws_instance" "tf-instance" {
  provider = aws
  count           = 3
  ami             = var.ami_id
  instance_type   = var.inst_type
  key_name        = "22Julyenable1-Lon"
  security_groups = ["AutoScaling-Security-Group-1"]
  root_block_device { volume_size = var.eph_block_size }
  tags = {
    Name = "tf-state-${count.index}"
  }
}
variable "availability-zones" {
    default = {
        "zone1" = "eu-west-2a"
        "zone2" = "eu-west-2b"
        "zone3" = "eu-west-2c"
    }
}

resource "aws_instance" "tf-forech-instance" {
  provider = aws.aws-roi
  for_each = var.availability-zones
  
  ami             = var.ami_id
  instance_type   = var.inst_type
  key_name        = "22Julyenable1-Lon"
  security_groups = ["AutoScaling-Security-Group-1"]
  root_block_device { volume_size = var.eph_block_size }
  availability_zone = each.value
}


