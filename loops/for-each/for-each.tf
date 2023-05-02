resource "null_resource" "fruits_map1" {
  for_each = var.fruits_map1

  provisioner "local-exec" {
    command = "echo the fruits name and cost is : ${each.value["name"]} - ${each.value["cost"]}"
  }
}

variable "fruits_map1" {
  default = {
    apple = {
      name = "apple"
      cost = 20
    }
    mango = {
      name = "mango"
      cost = 30
    }
    orange = {
      name = "orange"
      cost = 25
    }
  }
}



resource "null_resource" "fruits_map2" {
  for_each = var.fruits_map2

  provisioner "local-exec" {
    command = "echo the fruits name is : ${each.key} - ${each.value}"
  }
}

variable "fruits_map2" {
  default = {
    apple = 20
    mango = 30
    orange = 25
  }
}