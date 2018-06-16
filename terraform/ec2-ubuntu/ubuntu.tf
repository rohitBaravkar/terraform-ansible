resource "aws_instance" "ubuntu-instance" {
  ami           = "ami-67fca30b"
  instance_type = "t2.micro"
  key_name      = "demo-1-key-pair"

  tags {
    Name = "Ubuntu-terraform-instance"
  }
}
