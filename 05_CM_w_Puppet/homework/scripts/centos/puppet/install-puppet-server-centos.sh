
echo "* Instaling Puppet"
sudo dnf install -y https://yum.puppet.com/puppet7-release-el-8.noarch.rpm
sudo dnf install -y puppetserver

echo "* We must execute few more configuration steps in order to configure security"
sudo sed -i -e '/secure_path/ s[=.*[&:/opt/puppetlabs/bin[' /etc/sudoers

# exec $SHELL

echo "* Do initial configuration of server name"
sudo puppet config set dns_alt_names puppet-server,puppet-server.do2.lab
sudo puppet config set server puppet-server
sudo puppet config set caserver puppet-server
sudo puppet config set reportserver puppet-server

echo "* Generate certificates"
sudo puppetserver ca setup

echo "* We must adjust the configuration before attempt to start the service"
sudo cp /vagrant/config/puppetserver /etc/sysconfig/puppetserver 

echo "* Starting Puppet"
sudo systemctl start puppetserver
sudo systemctl enable puppetserver

echo "* Oppening Port 8140"
sudo firewall-cmd --add-port=8140/tcp --permanent 
sudo firewall-cmd --reload 
