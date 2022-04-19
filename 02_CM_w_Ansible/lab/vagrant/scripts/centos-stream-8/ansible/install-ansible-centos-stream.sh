#!/bin/bash

echo "* Adding EPEL Repository"
sudo dnf install -y epel-release

echo "* Install Ansible"
sudo dnf install -y ansible