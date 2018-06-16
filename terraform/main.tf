module "ubuntu" {
  source = "./ec2-ubuntu"
}

module "hosts" {
  source   = "./ansible-hosts"
  ubuntuip = "${module.ubuntu.ip}"
}
