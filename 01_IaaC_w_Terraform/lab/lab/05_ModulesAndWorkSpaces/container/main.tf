# Container
resource "docker_container" "con" {
  name  = var.con_name
  image = var.img_name
  ports {
    internal = var.con_int_port
    external = var.con_ext_port
  }
}
