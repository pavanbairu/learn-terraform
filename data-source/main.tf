variable "security_group" {
  default = "allow-all"
}

data "aws_security_group" "work-station" {
  id = var.security_group
}

output "display-security-group-of-work-station" {
  value = data.aws_security_group.work-station
}