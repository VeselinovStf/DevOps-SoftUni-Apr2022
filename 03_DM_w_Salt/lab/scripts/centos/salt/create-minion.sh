#!/bin/bash

echo "* Adding Salt Master"
wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh

echo "* Oppening Port"
sudo firewall-cmd --permanent --add-port=4505-4506/tcp
sudo firewall-cmd --reload 

echo "Updating Minion file"
sudo cp /vagrant/config/salt/minion /etc/salt/minion

echo "* Restarting Salt"
sudo systemctl restart salt-minion
