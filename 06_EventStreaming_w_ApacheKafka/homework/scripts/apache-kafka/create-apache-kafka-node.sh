#!/bin/bash

echo "* Adding Apache Kafka Node properties"
cp /vagrant/config/apache-kafka/zookeeper.properties /home/vagrant/kafka_2.13-3.1.0/config/zookeeper.properties
cp /vagrant/config/apache-kafka/server.properties /home/vagrant/kafka_2.13-3.1.0/config/server.properties

mkdir /tmp/zookeeper/
echo "1" > /tmp/zookeeper/myid

echo "* Starting Zookeeper"
/home/vagrant/kafka_2.13-3.1.0/bin/zookeeper-server-start.sh -daemon /home/vagrant/kafka_2.13-3.1.0/config/zookeeper.properties

echo "* Starting Broker"
/home/vagrant/kafka_2.13-3.1.0/bin/kafka-server-start.sh -daemon /home/vagrant/kafka_2.13-3.1.0/config/server.properties