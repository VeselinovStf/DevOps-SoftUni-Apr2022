# Pulls the image
resource "docker_image" "img" {
  name = var.img_name
}