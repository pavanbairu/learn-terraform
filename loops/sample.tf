resource "null_resource" "null" {
  count = length(var.vehicles)

  provisioner "print" {
    command = "echo vehicle name = ${var.vehicles[count.index]}"
  }
}

variable "vehicles" {
  default = ["bike", "car", "bus", "train"]
}

output "display_vehicles_count" {
  value = length(var.vehicles)
}

