data "aws_ami" "centos" {
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"
}

output "ami" {
  value = data.aws_ami.centos.image_id
}

resource "aws_instance" "web"{
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "Hello"
  }
}

output "web_ip" {
  value = aws_instance.web.public_ip
}

output "web_ami" {
  value = aws_instance.web.ami
}

resource "aws_route53_record" "web" {
  zone_id = "Z08846229MEF59DJAKAS"
  name    = "web.pavanbairu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.web.private_ip]
}