# How to

vagrant up

## Install Chef Manage

vagrant ssh server

## Add workerstation to server

!!! Download starter Kit

vagrant ssh workstation

cd vagrant/

knife bootstrap 192.168.99.105 -N workstation -U vagrant -P vagrant --sudo

## Add clients

knife bootstrap 192.168.99.102 -N docker -U vagrant -P vagrant --sudo
knife bootstrap 192.168.99.103 -N web -U vagrant -P vagrant --sudo
knife bootstrap 192.168.99.104 -N db -U vagrant -P vagrant --sudo

- Docker client
sudo chef-client --local-mode --override-runlist starter
