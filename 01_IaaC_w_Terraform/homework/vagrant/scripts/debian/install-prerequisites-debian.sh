#!/bin/bash

echo "* Add hosts ..."
echo "192.168.150.101 terraform.do2.homework terraform" >> /etc/hosts

echo "* Install Additional Packages ..."
sudo apt-get -y update
sudo apt-get install -y tree git nano curl wget unzip vim

