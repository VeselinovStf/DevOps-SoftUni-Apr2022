variable "docker_provider_host" {
  description = "Docker daemon host, defaults to local"
  type        = string
}

variable "docker_network" {
  description = "Name of Docker Network to use"
  type        = string
}

variable "db_image_name" {
  description = "Name of Db image"
  type        = string
}

variable "db_image_build_path" {
  description = "Db Image build context"
  type        = string
}

variable "db_docker_file_name" {
  description = "Name of Db Dockerfile"
  type        = string
}

variable "web_image_name" {
  description = "Name of Web image"
  type        = string
}

variable "web_image_build_path" {
  description = "Web Image build context"
  type        = string
}

variable "web_docker_file_name" {
  description = "Name of Web Dockerfile"
  type        = string
}

variable "db_container_name" {
  description = "Name of Db Container"
  type        = string
}

variable "web_container_name" {
  description = "Name of Web Container"
  type        = string
}

variable "web_internal_port" {
  description = "WEB Container internal Port"
  type        = string
}

variable "web_external_port" {
  description = "WEB Container External Port"
  type        = string
}

variable "web_volume_container_path" {
  description = "WEB Container Volume - Container Path - Source"
  type        = string
}

variable "web_volume_host_path" {
  description = "WEB Container Volume - Container Host Path"
  type        = string
}

variable "db_password" {
  description = "Database Container Pasword"
  type        = string
}