variable "service_plan_name" {
  description = "Service plan name"
  type        = string
  default     = ""
}

variable "rg_name" {
  description = "Resource group name where service plan will be deployed"
  type        = string
  default     = ""
}

variable "rg_location" {
  description = "Resource group location where service plan will be deployed"
  type        = string
  default     = ""
}

variable "service_plan_sku" {
  description = "Service plan size and price"
  type        = string
  default     = "F1"
}

variable "web_app_name" {
  description = "Web application name"
  type        = string
  default     = ""
}

variable "webapp_always_on" {
  description = "Web application always on"
  type        = bool
}