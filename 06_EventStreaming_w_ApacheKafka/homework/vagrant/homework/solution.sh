echo "* Echo from Creating Topic...."
/home/vagrant/kafka_2.13-3.1.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --partitions 3 --topic homework

echo "* Running producer"
python3 /vagrant/homework/producer.py &> /tmp/producer.log &

echo "* Run Consumer to see messages!"
#python3 /vagrant/homework/consumer-subscribe.py

echo "* Running Kafka Exporter as Docker Container ( -d )"
docker run -d -p 9308:9308 danielqsj/kafka-exporter --kafka.server=192.168.99.101:9092