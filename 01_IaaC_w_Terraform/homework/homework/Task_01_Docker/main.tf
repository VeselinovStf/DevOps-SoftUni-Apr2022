resource "docker_image" "img-db" {
  name = var.db_image_name
  build {
    path = var.db_image_build_path
    dockerfile = var.db_docker_file_name
  }
}

resource "docker_image" "img-web" {
  name = var.web_image_name
    build {
    path = var.web_image_build_path
    dockerfile = var.web_docker_file_name
  }
}

# Start a container
resource "docker_container" "con-db" {
  name  = var.db_container_name
  image = docker_image.img-db.latest

  networks_advanced {
    name    = docker_network.app-net.name
    aliases = [var.docker_network]
  }

  env = [
    var.db_password
  ]
}

# Start a container
resource "docker_container" "con-web" {
  name  = var.web_container_name
  image = docker_image.img-web.latest

  networks_advanced {
    name    = docker_network.app-net.name
    aliases = [var.docker_network]
  }

  ports {
    internal = var.web_internal_port
    external = var.web_external_port
  }

  volumes {
    container_path = var.web_volume_host_path
    host_path      = var.web_volume_container_path
  }
}

resource "docker_network" "app-net" {
  name = var.docker_network
}
