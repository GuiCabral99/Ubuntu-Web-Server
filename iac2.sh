#!/bin/bash

echo "-- Atualizando pacotes..."
apt-get update
apt-get upgrade -y

echo "-- Instalando pacotes necessarios..."
apt-get install apache2 -y
apt-get install unzip -y

echo "-- Lidando com arquivos do github..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
