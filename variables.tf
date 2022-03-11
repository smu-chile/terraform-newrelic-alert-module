variable "consul_base_path" {
  default     = "polymathes/NewRelic"
  type        = string
  description = "Consul path New Relic"
}

variable "consul_app_path" {
  type        = string
  description = "Consul path New Relic"
}

variable "consul_token" {
  type        = string
  description = "Token for accessing consul"
  sensitive   = true
}

variable "consul_url" {
  default     = "consul.smu-labs.cl"
  type        = string
  description = "Consul url"
}

variable "consul_datacenter" {
  default     = "us-east-1"
  type        = string
  description = "Consul datacenter"
}
