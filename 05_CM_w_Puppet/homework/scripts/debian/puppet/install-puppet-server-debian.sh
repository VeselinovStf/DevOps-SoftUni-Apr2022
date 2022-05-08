echo "* Instaling Puppet"
wget https://apt.puppet.com/puppet7-release-bullseye.deb -O repository.deb
sudo dpkg -i repository.deb
sudo apt-get update
sudo apt-get install -y puppetserver

echo "* We must execute few more configuration steps in order to configure security"
sudo cp /vagrant/config/secure_path_puppet_debian /etc/sudoers.d/secure_path_puppet_debian

# exec $SHELL

echo "* Do initial configuration of server name"
sudo puppet config set dns_alt_names puppet-server,puppet-server.do2.lab
sudo puppet config set server puppet-server
sudo puppet config set caserver puppet-server
sudo puppet config set reportserver puppet-server

echo "* Generate certificates"
sudo puppetserver ca setup

echo "* We must adjust the configuration before attempt to start the service"
sudo cp /vagrant/config/puppetserver /etc/defaults/puppetserver

echo "* Starting Puppet"
sudo systemctl start puppetserver
sudo systemctl enable puppetserver