docker_provider_host      = "unix:///var/run/docker.sock"
docker_network            = "app-net"
db_image_name             = "bgapp-db"
db_image_build_path      = "bgapp/"
db_docker_file_name       = "Dockerfile.db"
db_password               = "MYSQL_ROOT_PASSWORD=Password1"
db_container_name         = "db"
web_image_name            = "bgapp-web"
web_image_build_path      = "bgapp/"
web_docker_file_name       = "Dockerfile.web"
web_container_name        = "web"
web_internal_port         = 80
web_external_port         = 80
web_volume_container_path = "/vagrant/homework/Task_01_Docker/bgapp/web"
web_volume_host_path      = "/var/www/html"

