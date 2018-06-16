output "ubuntu_ip" {
  value = "${module.ubuntu.ip}"
}

output "inventory" {
  value = "${module.hosts.ansible_hosts}"
}
