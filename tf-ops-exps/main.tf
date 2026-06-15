# terraform {

# }

# # Number List
# variable "num_list" {
#   type    = list(number)
#   default = [0, 1, 2, 3, 4, 5]
# }

# # Object List
# variable "obj_list" {
#   type = list(object({
#     fname = string
#     lname = string
#   }))

#   default = [{
#     fname = "RanchodDas"
#     lname = "Chanchand"
#     }, {
#     fname = "Farhan"
#     lname = "Nitrate"
#   }]
# }

# # Map List
# variable "map_list" {
#   type = map(number)
#   default = {
#     "one"   = 1
#     "two"   = 2
#     "three" = 3
#     "four"  = 4
#     "five"  = 5
#   }
# }

# # Calculations
# locals {
#   mul = 2 * 2
#   add = 2 + 2
#   eq  = 2 != 3

#   # Double the List-
#   double = [for num in var.num_list : num * 2]

#   # Odd the List-
#   odd = [for num in var.var.num_list: num if num%2 != 0]
# }

# output "output" {
#   value = local.double
# }
