variable "name" {
  description = "name for the service plan"
  type        = string
}

variable "location" {
  description = "location for the service plan hosting"
  type        = string
}

variable "resource_group_name" {
  description = "resourge group name where to place the app service plan"
  type        = string
}

variable "service_plan_id" {
  description = "service plan id"
  type        = string
}

variable "always_on" {
  description = "wether the app should be always on"
  type        = bool
  default     = false
}

variable "zip_deploy_file" {
  description = "path to ziped app file"
  type        = string
  default     = null
}

variable "application_stack" {
  description = "application stack"
  type = object({
    dotnet_version = optional(string),
    node_version = optional(string)
  })
}

variable "dotnet_version" {
  description = "application stack"
  type = string
  default = null
}

variable "startup_command" {
  description = "start up command for the package"
  type = string
  default = null
}

variable "app_settings" {
  description ="App settings block for the Application "
  type = map
  default = null
}

variable "enable_managed_identity"{
  description = "check if the Managed Identity should be enabled"
  type = bool
  default = true
}