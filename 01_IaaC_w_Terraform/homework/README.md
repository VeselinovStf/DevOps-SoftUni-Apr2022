# Lab Notes

# TASK #1

## Hands on solution #1

1. vagrant up
2. vagrant ssh terraform
3. git clone https://github.com/shekeriev/bgapp.git
4. cd bgapp
5. docker pull shekeriev/bgapp-db
6. docker pull shekeriev/bgapp-web
7. docker network create app-net
8. docker container run -d --name db --net app-net -e MYSQL_ROOT_PASSWORD=Password1 shekeriev/bgapp-db
9. docker container run -d --name web --net app-net -p 80:80 -v $(pwd)/web:/var/www/html shekeriev/bgapp-web
10. http://192.168.150.101:80

## Hands on solution #2

1. vagrant up
2. vagrant ssh terraform
3. cd /vagrant/homework/Task_01_Docker
4. git clone https://github.com/shekeriev/bgapp.git
5. terraform init
6. terraform apply -auto-approve
7. http://192.168.150.101:80

# TASK #2

- Prep

1. Create two aws-ec2-instances
2. ssh to each instance
3. hand install of sql/php
4. create provisioning scripts
5. add them to terraform
6. terraform apply

- Goal

1. vagrant up
2. vagrant ssh terraform
3. cd /vagrant/homework/Task_01_Docker
4. git clone https://github.com/shekeriev/bgapp.git
5. terraform init
6. terraform apply -auto-approve