docker network create rabbitmq-net

docker run -d --rm --name rabbitmq-1 --hostname rabbitmq-1 --net rabbitmq-net -p 8081:15672 -p 9981:15692 -v /vagrant/lab/rabbitmq/node-1/:/config/ -e RABBITMQ_CONFIG_FILE=/config/rabbitmq  -e RABBITMQ_ERLANG_COOKIE=ABCDEFFGHIJKLMOP rabbitmq:3.10-management
docker run -d --rm --name rabbitmq-2 --hostname rabbitmq-2 --net rabbitmq-net -p 8082:15672 -p 9982:15692 -v /vagrant/lab/rabbitmq/node-2/:/config/ -e RABBITMQ_CONFIG_FILE=/config/rabbitmq  -e RABBITMQ_ERLANG_COOKIE=ABCDEFFGHIJKLMOP rabbitmq:3.10-management
docker run -d --rm --name rabbitmq-3 --hostname rabbitmq-3 --net rabbitmq-net -p 8083:15672 -p 9983:15692 -v /vagrant/lab/rabbitmq/node-3/:/config/ -e RABBITMQ_CONFIG_FILE=/config/rabbitmq  -e RABBITMQ_ERLANG_COOKIE=ABCDEFFGHIJKLMOP rabbitmq:3.10-management

docker container exec -it rabbitmq-1 rabbitmq-plugins enable rabbitmq_federation 
docker container exec -it rabbitmq-2 rabbitmq-plugins enable rabbitmq_federation
docker container exec -it rabbitmq-3 rabbitmq-plugins enable rabbitmq_federation

docker container exec -it rabbitmq-1 rabbitmq-plugins enable rabbitmq_prometheus 
docker container exec -it rabbitmq-2 rabbitmq-plugins enable rabbitmq_prometheus
docker container exec -it rabbitmq-3 rabbitmq-plugins enable rabbitmq_prometheus
