#!/bin/bash

echo "* Install the needed packages"
sudo dnf install -y java-17-openjdk

echo "* Disable Firewall"
sudo systemctl disable --now firewalld