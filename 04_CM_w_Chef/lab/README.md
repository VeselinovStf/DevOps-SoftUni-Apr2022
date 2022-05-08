# How to

vagrant up

## Install Chef Manage

vagrant ssh server

```
sudo chef-server-ctl install chef-manage
sudo chef-server-ctl reconfigure
sudo chef-manage-ctl reconfigure
```

## Get Starter Repo

- https://192.168.99.101

Download starter Kit

- https://192.168.99.101/organizations/demoorg/getting_started


## Add workerstation to server

vagrant ssh workstation

cd vagrant/

knife bootstrap 192.168.99.104 -N workstation -U vagrant -P vagrant --sudo

## Add clients

knife bootstrap 192.168.99.102 -N client-1 -U vagrant -P vagrant --sudo
knife bootstrap 192.168.99.103 -N client-2 -U vagrant -P vagrant --sudo

## Upload cookbook

knife cookbook upload starter

knife node run_list add client-1 "recipe[starter]"

- Execute from node

sudo chef-client