#!/bin/bash

echo "* Installing Additional Packages"
sudo dnf install -y git sshpass

echo "* Set CHRONY"
sudo dnf install -y chrony
sudo systemctl enable chronyd
sudo systemctl start chronyd

echo "* Set SELinux to permissive mode"
sudo setenforce permissive
sudo sed -i 's\=enforcing\=permissive\g' /etc/sysconfig/selinux
