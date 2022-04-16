#!/bin/bash

echo "* Add hosts ..."
echo "192.168.150.101 lab.do2.lab lab" >> /etc/hosts
echo "192.168.150.102 docker.do2.lab docker" >> /etc/hosts

echo "* Install Additional Packages ..."
sudo apt-get -y update
sudo apt-get install -y tree git nano curl wget unzip vim

