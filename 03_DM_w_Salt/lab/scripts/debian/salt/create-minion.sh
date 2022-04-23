#!/bin/bash

echo "* Adding Salt Master"
wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
sudo sh bootstrap-salt.sh

echo "Updating Minion file"
sudo cp /vagrant/config/salt/minion /etc/salt/minion

echo "* Restarting Salt"
sudo systemctl restart salt-minion
