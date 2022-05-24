#!/bin/bash

echo "* Install Python3"
sudo dnf install -y python3

echo "* And add the Kafka Python library"
sudo pip3 install kafka-python
