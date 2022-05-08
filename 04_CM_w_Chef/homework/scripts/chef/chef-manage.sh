#!/bin/bash

sudo chef-server-ctl install chef-manage
sudo chef-server-ctl reconfigure
sudo chef-manage-ctl reconfigure
