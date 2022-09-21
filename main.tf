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


module "custom_instance" {
  source = "./awsinstance"
  ami_id = var.toplevel_amiid
  topsec = var.topsec
  topkey = var.topkey 
}

module "db_instance" {
  source         = "./awsinstance"
  ami_id         = var.toplevel_amiid
  eph_block_size = var.toplevel_block_size
  inst_type      = var.toplevel_inst_type

}

module "aws_security_group" {

}