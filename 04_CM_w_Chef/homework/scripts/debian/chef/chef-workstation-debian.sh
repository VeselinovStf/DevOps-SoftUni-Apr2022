#!/bin/bash

echo "* Download the package"
wget -P /tmp https://packages.chef.io/files/stable/chef-workstation/22.4.861/ubuntu/20.04/chef-workstation_22.4.861-1_amd64.deb

echo "* Install the package"
sudo dpkg -i /tmp/chef-workstation_22.4.861-1_amd64.deb

echo "* Check Ruby"
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
echo "* Modify the PATH variable"
echo 'export PATH="/opt/chef-workstation/embedded/bin:$PATH"' >> ~/.bash_profile && source ~/.bash_profile