#!/bin/bash

echo "* Download the package"
wget -P /tmp https://packages.chef.io/files/stable/chef-server/14.14.1/ubuntu/20.04/chef-server-core_14.14.1-1_amd64.deb

echo "* Install the package"
sudo dpkg -i /tmp/chef-server-core_14.14.1-1_amd64.deb

echo "* Reconfiguring Chef"
sudo chef-server-ctl reconfigure --chef-license=accept