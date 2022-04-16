echo "* Adjust Docker configuration ..."
sudo sed -i 's@-H fd://@-H fd:// -H tcp://0.0.0.0@g' /lib/systemd/system/docker.service

echo "* Restart Docker ..."
sudo systemctl daemon-reload
sudo systemctl restart docker