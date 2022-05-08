#!/bin/bash

echo "* Create administrator user"
sudo chef-server-ctl user-create chefadmin Chef Admin chefadmin@do2.lab 'Password1' --filename /home/vagrant/chefadmin.pem

echo "* Create an organization"
sudo chef-server-ctl org-create homework-org 'Homework Org.' --association_user chefadmin --filename /home/vagrant/homeworkorg-validator.pem

echo "* Open Firewall Ports 80/443"
sudo firewall-cmd --add-port=80/tcp --permanent 
sudo firewall-cmd --add-port=443/tcp --permanent 
sudo firewall-cmd --reload 
