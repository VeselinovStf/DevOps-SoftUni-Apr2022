variable "con_name" {
  description = "Container name"
  default = "site-3"
}

variable "img_name" {
  description = "Image Name"
  default = "shekeriev/terraform-docker:latest"
}

variable "con_int_port" {
  description = "Container Internal Port"
  default = 80
}

variable "con_ext_port" {
  description = "Container External Port"
  default = 80
}
