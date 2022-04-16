con_name = {
  dev  = "site-dev"
  prod = "site-prod"
}

img_name = {
  dev  = "shekeriev/terraform-docker:dev"
  prod = "shekeriev/terraform-docker:prod"
}

con_int_port = {
  dev  = 80
  prod = 80
}

con_ext_port = {
  dev  = 8080
  prod = 80
}
