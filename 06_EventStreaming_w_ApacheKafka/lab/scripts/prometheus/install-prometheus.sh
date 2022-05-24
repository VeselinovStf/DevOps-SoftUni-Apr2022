echo "* Installing Prometheus"
wget https://github.com/prometheus/prometheus/releases/download/v2.35.0/prometheus-2.35.0.linux-amd64.tar.gz

tar xzvf prometheus-2.35.0.linux-amd64.tar.gz

echo "* Installing Prometheus"
cd prometheus-2.35.0.linux-amd64 && ./prometheus --config.file /vagrant/config/prometheus/prometheus.yml --web.enable-lifecycle &> /tmp/prometheus.log &