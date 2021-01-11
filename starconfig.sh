#!/bin/bash
sudo apt update
sudo apt upgrade
#install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt update
sudo apt-cache policy docker-ce
sudo apt install docker-ce -y
#install docker-compose 1.27.4
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#install python 3.9
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.9 -y
#install nginx
sudo apt install nginx
#ufw settings
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw enable