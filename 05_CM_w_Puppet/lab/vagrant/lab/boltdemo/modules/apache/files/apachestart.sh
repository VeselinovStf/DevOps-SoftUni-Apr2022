#!/bin/bash

systemctl is-active httpd &> /dev/null

if [ $? -eq 0 ]
then
  echo "Apache is running"
else
  echo "Starting Apache"
  systemctl start httpd
fi

