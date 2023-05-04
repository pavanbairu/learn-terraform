resource "null_resource" "null" {

  provisioner "local-exec" {
    command = "echo Hello from module1 - ${var.input} "
  }
}

resource "null_resource" "null1" {

  provisioner "local-exec" {
    command = "echo Hello from module1"
  }
}

resource "null_resource" "null2" {

  provisioner "local-exec" {
    command = "echo Hello from module1"
  }
}

variable "input" {}