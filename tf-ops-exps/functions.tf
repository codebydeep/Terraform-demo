terraform {}

locals {
  value = "Hello World!!"
}

variable "string_list" {
  type    = list(string)
  default = ["serv1", "serv2", "serv3", "serv4"]
}

output "output" {
  #   value = lower(local.value)
  #   value = upper(local.value)
  #   value = startswith(local.value, "Hello")
  #   value = min(1,2,3,4,5)
  #   value = max(1, 2, 3, 4, 5)
  #   value = max(1, 2, 3, 4, 5)
  #   value = length(var.string_list)
  #   value = join(":", var.string_list)
  #   value = contains(var.string_list, "serv1")
  value = toset(var.string_list)
}

