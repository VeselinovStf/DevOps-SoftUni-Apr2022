terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  host = "tcp://192.168.150.102:2375/"
}

# Pulls the image
resource "docker_image" "img-web" {
  name = "shekeriev/terraform-docker:latest"
}

# Container
resource "docker_container" "con-web" {
  name  = "site"
  image = docker_image.img-web.latest
  ports {
    internal = "80"
    external = "80"
  }
}

output "container-id" {
  value = docker_container.con-web.id
}

output "container-name" {
  value = docker_container.con-web.name
}


