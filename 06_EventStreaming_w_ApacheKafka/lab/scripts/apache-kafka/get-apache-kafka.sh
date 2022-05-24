#!/bin/bash

echo "* Download the recent package"
wget https://dlcdn.apache.org/kafka/3.1.0/kafka_2.13-3.1.0.tgz

echo "* Extract the archive"
tar xzvf kafka_2.13-3.1.0.tgz
