variable "name" {
  description = "name for the storage account"
  type        = string
}

variable "server_id" {
  description = "server Id of MsSQL Server"
  type        = string
}

variable "start_ip_address" {
  description = "Starting range of all allowed IPs"
  type        = string
}

variable "end_ip_address" {
  description = "End range of all allowed IPs"
  type        = string
}