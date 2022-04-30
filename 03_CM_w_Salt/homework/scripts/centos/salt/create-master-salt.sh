#!/bin/bash

echo "* Adding Salt Master"
wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh -M -N -X

echo "* Oppening Port"
sudo firewall-cmd --permanent --add-port=4505-4506/tcp
sudo firewall-cmd --reload 

echo "* Updating Master file"
sudo cp /vagrant/config/salt/master /etc/salt/master

echo "* Add roster file"
sudo cp /vagrant/config/salt/roster /etc/salt/roster

echo "* Adding Folders"
sudo mkdir /srv/pillar
sudo mkdir /srv/salt

echo "* Restarting Salt"
sudo systemctl enable salt-master
sudo systemctl start salt-master
systemctl status salt-master


