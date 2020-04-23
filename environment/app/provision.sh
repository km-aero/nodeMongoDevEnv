#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git=1:2.7.4-0ubuntu1.7\* -y

# install nodejs
sudo apt-get install python-software-properties -y
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get install npm -y

# install pm2
sudo npm install pm2@latest -g

# link node config files
sudo systemctl start nginx
unlink /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
sudo systemctl reload-or-restart nginx

# start the app
cd app
npm install
npm start
