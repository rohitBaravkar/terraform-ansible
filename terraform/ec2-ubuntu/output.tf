output "ip" {
  value = "${aws_instance.ubuntu-instance.public_ip}"
}
