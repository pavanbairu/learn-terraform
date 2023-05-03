variable "sample" {
  default = "abcxyz"
}

output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = ["abc", "xyz"]
}

output "sample1" {
  value = element(var.sample1, 0)
}

variable "sample2" {
  default = {
    abc = 100
    xyz = 200
  }
}

output "sample2" {
  value = lookup(var.sample2, "a1", "dummy" )
}