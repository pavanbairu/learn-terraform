variable "sample_string" {
  default = "welcome to terraform"
}

output "display_sample_string1" {
  value = var.sample_string
}

output "display_sample_string2" {
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

#dynamic input passing
variable "env" {} #run as terraform apply -var-file=dev.tfvars  terraform apply -var-file=prod.tfvars

output "env" {   # passing the value from dev.tfvars or prod.tfvars. we should give load the filename in runtime
  value = var.env
}

variable "auto_num1" {}

output "auto_num1" { # passing the value from demo.auto.tfvars(the files with auto.tf or teraform.tf will automatically
                      #loaded at runtime no need to explicitly mention the file names
  value = var.auto_num1
}