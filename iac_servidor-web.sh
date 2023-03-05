#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando o apache"
apt install apache2 -y

echo "Instalando o unzip"
apt install unzip -y

echo "Baixando a aplicação no github"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip

echo "Copiando os arquivos da aplicação para o diretório do apache"
cd linux-site-dio-main
cp -R * /var/www/html/
