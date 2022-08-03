#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "Atualizado com suecsso!!"
echo ""

echo "Instalando ferramentas de servidor..."
apt-get install apache2 -y
apt-get install unzip -y
echo "Ferramentas instaladas com sucesso!"
echo ""

echo "Baixando arquivos web e acondicionando..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Site pronto para acesso!!"





