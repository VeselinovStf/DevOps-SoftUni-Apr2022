#!/bin/bash

echo "* Adding VirtualBox repos"
echo "deb http://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib" >> /etc/apt/sources.list
echo "deb http://fasttrack.debian.net/debian-fasttrack/ bullseye-backports-staging main contrib" >> /etc/apt/sources.list

echo "* Instaling VirtualBox"
sudo apt update -y
sudo apt install -y virtualbox