variable "toplevel_amiid" {
  default = "ami-0fb391cce7a602d1f"
}

variable "toplevel_block_size" {
  default = 20
}
variable "toplevel_inst_type" {
  default = "t2.medium"
}

variable "setregion" {
  default = "eu-west-2"
}
variable "infrakey" {
  default = "no"
}
variable "infrasecgroup" {
  default = "no"
}