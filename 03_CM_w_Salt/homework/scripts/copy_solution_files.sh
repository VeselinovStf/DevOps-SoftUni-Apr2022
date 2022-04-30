
echo "*** Copy SLS Files"
sudo cp /vagrant/homework/01_assignment/*.sls /srv/salt/
sudo cp /vagrant/homework/02_assignment/*.sls /srv/salt/

echo "*** Adding SLS TOP File"
sudo cp /vagrant/homework/top.sls /srv/salt/top.sls

echo "*** Copy App Source files"
sudo cp -r /vagrant/homework/src/ /srv/salt/