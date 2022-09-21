resource "aws_instance" "tf-instance" {
  ami           = "${var.ami_id}"
  instance_type = "${var.inst_type}"
  topkey      = "${var.topkey}"
  topsec = ["${var.topsec}"]
  root_block_device { volume_size = "${var.eph_block_size}"}
  
  }