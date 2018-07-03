#!/bin/bash

sudo apt-get update
sudo apt-get install -y python-software-properties

echo "Instalando PHP e Nginx"
sudo apt-get install -y nginx php5-fpm php5-curl php5-cli

echo "Instalando pacotes adicionais"
sudo apt-get install -y vim curl git


echo "Copiando arquivo Default Nginx"
sudo cp -v /vagrant/default /etc/nginx/sites-available/
sudo service nginx restart


