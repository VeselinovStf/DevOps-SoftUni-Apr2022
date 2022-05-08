#!/bin/bash

echo "* Download the package"
wget -P /tmp https://packages.chef.io/files/stable/chef-workstation/22.4.861/el/8/chef-workstation-22.4.861-1.el8.x86_64.rpm

echo "* Install the package"
sudo rpm -Uvh /tmp/chef-workstation-22.4.861-1.el8.x86_64.rpm

echo "* Check Ruby"
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
echo "* Modify the PATH variable"
echo 'export PATH="/opt/chef-workstation/embedded/bin:$PATH"' >> ~/.bash_profile && source ~/.bash_profile



