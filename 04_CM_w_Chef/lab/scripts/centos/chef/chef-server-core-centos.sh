#!/bin/bash

echo "* Download the package"
wget -P /tmp https://packages.chef.io/files/stable/chef-server/14.14.1/el/8/chef-server-core-14.14.1-1.el7.x86_64.rpm

echo "* Install the package"
sudo rpm -Uvh /tmp/chef-server-core-14.14.1-1.el7.x86_64.rpm

echo "* Reconfiguring Chef"
sudo chef-server-ctl reconfigure --chef-license=accept
