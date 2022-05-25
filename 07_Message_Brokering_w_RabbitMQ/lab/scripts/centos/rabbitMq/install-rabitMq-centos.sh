echo "* Install the signing keys"
sudo rpm --import https://github.com/rabbitmq/signing-keys/releases/download/2.0/rabbitmq-release-signing-key.asc
sudo rpm --import https://packagecloud.io/rabbitmq/erlang/gpgkey
sudo rpm --import https://packagecloud.io/rabbitmq/rabbitmq-server/gpgkey

echo "* reate a repository file"
sudo cp /vagrant/config/centOs/rabbitMQ/rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo 

echo "Update packages metadata"
sudo dnf -q makecache -y --disablerepo='*' --enablerepo='rabbitmq_erlang' --enablerepo='rabbitmq_server'

echo "Install some prerequisites from the standard system repositories"
sudo dnf install -y socat logrotate

echo "Install the actual packages for Erlang and RabbitMQ"
sudo dnf install --repo rabbitmq_erlang --repo rabbitmq_server erlang-24.3.4 rabbitmq-server -y

echo "Start and enable the service"
sudo systemctl enable --now rabbitmq-server

echo "Disable firewall"
sudo systemctl disable --now firewalld
