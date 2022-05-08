#!/bin/bash

echo "* Download the package"
wget -P /tmp https://packages.chef.io/files/stable/chef-workstation/22.4.861/el/8/chef-workstation-22.4.861-1.el8.x86_64.rpm

echo "* Install the package"
sudo rpm -Uvh /tmp/chef-workstation-22.4.861-1.el8.x86_64.rpm

echo "* Check Ruby"
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile

echo "* Modify the PATH variable"
echo 'export PATH="/opt/chef-workstation/embedded/bin:$PATH"' >> ~/.bash_profile && source ~/.bash_profile

echo "* Creating Chef Repository"
#chef generate repo dba-tasks-repo --chef-license=accept

knife ssl fetch

cd /vagrant/chef-starter/chef-repo && yes | knife bootstrap 192.168.99.105 -N workstation -U vagrant -P vagrant --sudo --chef-license=accept
cd /vagrant/chef-starter/chef-repo && yes | knife bootstrap 192.168.99.102 -N docker -U vagrant -P vagrant --sudo --chef-license=accept


echo "* Adding Repo Credentials"
git config --global user.name veselinovStf
git config --global user.email veselinovStf@gmail.com

# knife cookbook upload starter
# knife node run_list add docker "recipe[test]"
# knife ssh 'name:docker' 'sudo chef-client' -x vagrant -P vagrant
echo "* Initial Repo Commit"
cd /vagrant/chef-starter/chef-repo && git init
cd /vagrant/chef-starter/chef-repo && git add *
cd /vagrant/chef-starter/chef-repo && git git commit -m "Initial"

echo "* Initial From Knife Supermarket Commit"
cd /vagrant/chef-starter/chef-repo && knife supermarket install docker
cd /vagrant/chef-starter/chef-repo && knife supermarket download docker