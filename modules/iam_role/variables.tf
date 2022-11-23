

variable "role_assigments" {
  type =list( object({
    name = string,
    scope_id = string,
    principal_id = string,
    role_name = string
  }))

  description = "a list a rbac role assigments"
  default = [ ]
}