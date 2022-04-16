module "image" {
  source   = "./image"
  img_name = lookup(var.img_name, var.mode)
}

module "container" {
  source       = "./container"
  img_name     = module.image.image_out
  con_name     = lookup(var.con_name, var.mode)
  con_int_port = lookup(var.con_int_port, var.mode)
  con_ext_port = lookup(var.con_ext_port, var.mode)
}




