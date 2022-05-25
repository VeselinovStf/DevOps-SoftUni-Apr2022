sudo dnf install -y sshpass

sshpass -p vagrant ssh -o StrictHostKeyChecking=no rabbit-1 'sudo cat /var/lib/rabbitmq/.erlang.cookie' | sudo tee /var/lib/rabbitmq/.erlang.cookie

sudo systemctl restart rabbitmq-server
sudo rabbitmqctl stop_app
sudo rabbitmqctl reset
sudo rabbitmqctl join_cluster rabbit@rabbit-1
sudo rabbitmqctl start_app
sudo rabbitmq-plugins enable rabbitmq_federation
sudo rabbitmq-plugins enable rabbitmq_management

sudo rabbitmqctl set_policy ha-fed ".*" '{"federation-upstream-set":"all", "ha-sync-mode":"automatic", "ha-mode":"nodes", "ha-params":["rabbit@rabbit-1","rabbit@rabbit-2","rabbit@rabbit-3"]}' --priority 1 --apply-to queues