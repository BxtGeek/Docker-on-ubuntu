#!/bin/sh

# Author : Manoj Kumar
# Copyright (c) corpit.org
# Working : This Script will install the docker on the ubuntu server
# Script follows here:

sudo apt update && sudo apt upgrade &> /dev/null
sudo apt install apt-transport-https ca-certificates curl software-properties-common &> /dev/null
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &> /dev/null
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" &> /dev/null
apt-cache policy docker-ce &> /dev/null
sudo apt install docker-ce &> /dev/null
echo "Docker Install Sucessfully"
echo "*****************************"
echo "Docker Status"
echo sudo systemctl status ssh | grep 'Active'
