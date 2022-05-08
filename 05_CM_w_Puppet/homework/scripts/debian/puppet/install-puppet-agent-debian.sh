wget https://apt.puppet.com/puppet7-release-bullseye.deb -O repository.deb

echo "* Install the repository package"
sudo dpkg -i repository.deb

echo "* Install the agent"
sudo apt-get update
sudo apt-get install -y puppet-agent

sudo cp /vagrant/config/secure_path_puppet_debian /etc/sudoers.d/puppet

# exec $SHELL

sudo puppet config set server puppet-server
sudo puppet config set certname client2

echo "* And now start and enable the agent service"
sudo systemctl start puppet
sudo systemctl enable puppet
