variable "ami_id" {
  default = "ami-0fb391cce7a602d1f"
}

variable "images" {
    default = {
        "eu-west-1" = "ami-f976839e"
        "eu-west-2" = "ami-f976839e"
    }
}