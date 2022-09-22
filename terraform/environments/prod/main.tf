module "infra"{
  source = "../../modules/infra"
  toplevel_amiid = var.testenv_ami
  infrakey = var.testenvinfrakey
  infrasecgroup = var.testenvinfrasecgroup
  setregion = var.setenvregion
}