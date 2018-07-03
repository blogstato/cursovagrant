#!/bin/bash

apt-get update

echo "Instalado Nginx"
apt-get install -y nginx php5-fpm php5-curl php5-cli

echo "Instalando pacotes adicionais"
apt-get install -y vim curl git

echo "Copiando Default para Nginx"
sudo cp -v /vagrant/default /etc/nginx/sites-available/default

#sudo cp -v /vagrant/default /etc/nginx/sites-avaliable/
sudo service nginx restart

