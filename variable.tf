variable "vultr_api_key" {
  description = "API key for vultr access"
  type = string

}


variable "plan" {
  description = "VM Instance plan"
  type = string
  default = "vc2-2c-4gb"
}
variable "region" {
  description = "Vultr Region"
  type = string
  default = "nrt"
}

variable "os_id" {
  description = "Instance OS id"
  default = "1946"
}

variable "enable_ipv6" {
  description = "Enable ipv6 for instance"
  type = bool
  default = true
}

