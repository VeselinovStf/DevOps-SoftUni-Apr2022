#!/bin/bash

echo "* Add Repository"
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update

echo "* Install Ansible"
sudo apt-get install ansible
