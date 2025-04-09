#!/bin/bash

# Script de instalação do Andrisoft Wanguard no Debian 12
# Autor: Vanderson Diniz do Nascimento
# Site: https://vandersondiniz.com.br
# LinkedIn: https://www.linkedin.com/in/vdnascdiniz/

set -e

echo "[+] Atualizando pacotes..."
apt update

echo "[+] Instalando dependências..."
apt install -y apt-transport-https wget gnupg

echo "[+] Adicionando chave GPG da Andrisoft..."
wget -qO - https://www.andrisoft.com/andrisoft.gpg.key | gpg --dearmor -o /usr/share/keyrings/andrisoft-keyring.gpg

echo "[+] Adicionando repositório Andrisoft para Debian 12..."
echo "deb [signed-by=/usr/share/keyrings/andrisoft-keyring.gpg] https://packages.andrisoft.com bookworm main" > /etc/apt/sources.list.d/andrisoft.list

echo "[+] Atualizando pacotes com novo repositório..."
apt update

echo "[+] Instalando o Wanguard..."
apt install -y wanguard

echo "[+] Iniciando e habilitando o serviço WANsupervisor..."
systemctl start WANsupervisor
systemctl enable WANsupervisor

echo "[✔] Instalação do Wanguard concluída com sucesso!"
echo "Acesse a interface web ou consulte a documentação para configurar sua instância."
