provider "docker" {
  host = "tcp://192.168.150.102:2375/"
}

# Pulls the image
resource "docker_image" "img-web" {
  name = var.img_name
}

# Container
resource "docker_container" "con-web" {
  name  = var.con_name
  image = docker_image.img-web.latest
  ports {
    internal = var.con_int_port
    external = var.con_ext_port
  }
}


