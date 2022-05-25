echo "** Instaling Packages"
sudo dnf install -y python3
sudo python3 -m pip install pika --upgrade

echo "** Starting RabbitMQ Containers"
docker-compose -f /vagrant/homework/docker-compose.yml up -d --build

echo "** Adding Pluggins to RabbitMQ Containers"
docker container exec -it rabbitmq-1 rabbitmq-plugins enable rabbitmq_federation 
docker container exec -it rabbitmq-2 rabbitmq-plugins enable rabbitmq_federation
docker container exec -it rabbitmq-3 rabbitmq-plugins enable rabbitmq_federation

docker container exec -it rabbitmq-1 rabbitmq-plugins enable rabbitmq_prometheus 
docker container exec -it rabbitmq-2 rabbitmq-plugins enable rabbitmq_prometheus
docker container exec -it rabbitmq-3 rabbitmq-plugins enable rabbitmq_prometheus

echo "** Adding Policy"
docker exec -it rabbitmq-1 rabbitmqctl set_policy ha-fed ".*" '{"ha-sync-mode":"automatic", "ha-mode":"nodes", "ha-params":["rabbit@rabbitmq-1","rabbit@rabbitmq-2","rabbit@rabbitmq-3"]}' --priority 1 --apply-to queues

echo "** Starting Emiter"
python3 /vagrant/homework/code/emit_log_topic.

echo "** Starting Consumers"
python3 /vagrant/homework/code/recv_log_topic.py "*.warm" "*.crit"

echo "** Starting Consumers"
python3 /vagrant/homework/code/recv_log_topic.py "ram.*"