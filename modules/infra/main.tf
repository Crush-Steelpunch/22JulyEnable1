terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


provider "aws" {
  region = "${var.setregion}"
}

module "custom_instance" {
    source = "./awsinstance"
    ami_id = "${var.toplevel_amiid}"
    pubkey = "${var.infrakey}"
    secgroup = var.infrasecgroup
}

module "db_instance" {
    source = "./awsinstance"
    ami_id = "${var.toplevel_amiid}"
    eph_block_size = "${var.toplevel_block_size}"
    inst_type = "${var.toplevel_inst_type}"
    pubkey = "${var.infrakey}"
    secgroup = "${var.infrasecgroup}"
}