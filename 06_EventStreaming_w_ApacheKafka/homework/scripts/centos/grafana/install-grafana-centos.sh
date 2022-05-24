echo "* Download the package"
wget https://dl.grafana.com/oss/release/grafana-8.5.2-1.x86_64.rpm

echo "* Install Grafana"
sudo yum install -y grafana-8.5.2-1.x86_64.rpm

echo "* Update services information"
sudo systemctl daemon-reload

echo "* Start and enable the service"
sudo systemctl enable --now grafana-server

