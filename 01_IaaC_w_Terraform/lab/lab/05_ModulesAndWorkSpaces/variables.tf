variable "mode" {
  description = "MODE: prod / dev"
}

variable "con_name" {
  description = "Container name"
  type        = map(any)
}

variable "img_name" {
  description = "Image Name"
  type        = map(any)
}

variable "con_int_port" {
  description = "Container Internal Port"
  type        = map(any)
}

variable "con_ext_port" {
  description = "Container External Port"
  type        = map(any)
}
