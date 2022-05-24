echo "* Prep for Grafana"
sudo apt-get install -y adduser libfontconfig1

echo "* Download the package"
wget https://dl.grafana.com/oss/release/grafana_8.5.2_amd64.deb

echo "* Install Grafana"
sudo dpkg -i grafana_8.5.2_amd64.deb

echo "* Update services information"
sudo systemctl daemon-reload

echo "* Start and enable the service"
sudo systemctl enable --now grafana-server
