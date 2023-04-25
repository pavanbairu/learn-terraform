variable "sample_string" {
  default = "welcome to terraform"
}

output "display_simple_string" {
  value = var.sample_string
}
