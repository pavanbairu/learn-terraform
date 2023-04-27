variable "security_group" {
  default = "allow-all"
}

data "aws_security_group" "selected" {
  id = var.security_group
}

output "display-security-group-of-work-station" {
  value = data.aws_security_group.selected
}