variable "myvar" {
  type = "string"
  default = "Hello Terraform from Vivienne"
}

variable "mymap" {
  type = "map"
  default = {
    "mykey" = "my value"
  }
}
variable "set_password" {
    default = false
}

variable "users" {
    type    = "list"
    default = ["root", "user1", "user2"]
}
