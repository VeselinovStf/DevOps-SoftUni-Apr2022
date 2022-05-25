echo "* Enable RabbitMQ Managment"
sudo rabbitmq-plugins enable rabbitmq_management

echo "* Enable RabbitMQ Managment"
sudo rabbitmq-plugins enable rabbitmq_federation

echo "* Enable RabbitMQ Prometheus"
sudo rabbitmq-plugins enable rabbitmq_prometheus

echo "* SetUp RabbitMQ User"
sudo rabbitmqctl add_user admin adminpass 
sudo rabbitmqctl set_user_tags admin administrator
sudo rabbitmqctl set_permissions -p / admin ".*" ".*" ".*"

echo "* SetUp RabbitMQ Admin"
sudo dnf install -y python3
curl http://$(hostname -s):15672/cli/rabbitmqadmin > rabbitmqadmin
sudo mv rabbitmqadmin /usr/local/bin/
sudo chmod +x /usr/local/bin/rabbitmqadmin

echo "* Install Python3 Dependency"
sudo python3 -m pip install pika --upgrade 


