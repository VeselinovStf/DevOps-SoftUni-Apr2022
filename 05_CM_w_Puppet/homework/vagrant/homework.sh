sudo puppet module install puppetlabs/mysql
sudo puppet module install puppetlabs-firewall --version 3.4.0

sudo cp -r  /vagrant/homework/db /etc/puppetlabs/code/environments/db
sudo cp -r  /vagrant/homework/web /etc/puppetlabs/code/environments/web