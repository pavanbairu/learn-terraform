resource "aws_instance" "all_instance" {
  ami = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "module-ec2"
  }
}

data "aws_ami" "centos" {
  owners      = ["973714476881"]
  name_regex  = "Centos-8-DevOps-Practice"
  most_recent = true
}

variable "security_group_id" {}