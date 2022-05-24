echo "* Create a folder to store the JMX Agent"
mkdir /vagrant/scripts/apache-kafka/kafka_2.13-3.1.0/jmxagent

echo "* Download the latest version of the agent"
cd /vagrant/scripts/apache-kafka/kafka_2.13-3.1.0/jmxagent && wget https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.16.1/jmx_prometheus_javaagent-0.16.1.jar

echo "* Download the example YAML configuration file as well"
cd /vagrant/scripts/apache-kafka/kafka_2.13-3.1.0/ && wget https://raw.githubusercontent.com/prometheus/jmx_exporter/master/example_configs/kafka-2_0_0.yml

echp "* Export a special environment variable"
cd /vagrant/scripts/apache-kafka/kafka_2.13-3.1.0/ && export KAFKA_OPTS="$KAFKA_OPTS -javaagent:jmxagent/jmx_prometheus_javaagent-0.16.1.jar=9101:jmxagent/kafka-2_0_0.yml" 

echo "* Stop the broker process"
cd /vagrant/scripts/apache-kafka/kafka_2.13-3.1.0/ && bin/kafka-server-stop.sh

echo "* And start it again"
cd /vagrant/scripts/apache-kafka/kafka_2.13-3.1.0/  && bin/kafka-server-start.sh -daemon config/server.properties
