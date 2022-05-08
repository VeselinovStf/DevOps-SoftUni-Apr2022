sudo dnf install -y https://yum.puppet.com/puppet7-release-el-8.noarch.rpm
sudo dnf install -y puppet-agent

sudo sed -i -e '/secure_path/ s[=.*[&:/opt/puppetlabs/bin[' /etc/sudoers

exec $SHELL

sudo puppet config set server puppet-server
sudo puppet config set certname client1

echo "* And now start and enable the agent service"
sudo systemctl start puppet
sudo systemctl enable puppet
