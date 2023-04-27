data "aws_security_group" "selected" {
  name = "allow-all"
}

output "display-security-group-of-work-station" {
  value = data.aws_security_group.selected
}