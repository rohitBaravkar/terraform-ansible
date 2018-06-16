variable "ubuntuip" {}

data "template_file" "web_ansible" {
  template = "${file("${path.module}/hostname.tpl")}"

  vars {
    ip = "${var.ubuntuip}"
  }
}

data "template_file" "ansible_hosts" {
  template = "${file("${path.module}/ansible_hosts.tpl")}"

  vars {
    ubuntu_hosts = "${data.template_file.web_ansible.rendered}"
  }
}

output "ansible_hosts" {
  value = "${data.template_file.ansible_hosts.rendered}"
}
