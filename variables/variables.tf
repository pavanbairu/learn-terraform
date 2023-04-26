variable "sample_string" {
  default = "welcome to terraform"
}

output "display_simple_string" {
  value = var.sample_string
}

output "display_sample_string" {
  value = "value of string = ${var.sample_string}"
}

variable "sample_number" {
  default = 100 # 10.6 is a floating value can also support this
}

variable "sample_boolean" {
  default = true
}

# variable types

# we have list variable types. single variable can hold multiple values
variable "sample_list" {
  default = [100, "pavan", true] # data type inside list doesnot matter
}

output "display_sample_list1" {
  value = var.sample_list[0] # printing the first value from the list i.e, 100
}

# other data type dictionary or map stores the multiple values as key pair
variable "sample_dictionary" {
  default = {number=100, name="pavan", boolean=true}
}

output "display_sample_dictionary_name" {
  value = var.sample_dictionary["name"]
}