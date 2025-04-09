#!/bin/bash

set -e

echo "🔧 Atualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando dependências..."
sudo apt install -y wget curl gnupg2 apt-transport-https software-properties-common

echo "🧩 Adicionando repositório Wanguard (manual)..."
echo "➡️  Este passo exige que você baixe o pacote .deb manualmente do portal da Andrisoft:"
echo "    https://www.andrisoft.com/download"
echo ""
read -p "🔐 Copie o instalador .deb para este diretório e pressione Enter para continuar..."

if ls wanguard-*.deb 1> /dev/null 2>&1; then
    echo "📦 Instalando pacote .deb..."
    sudo dpkg -i wanguard-*.deb || sudo apt --fix-broken install -y
else
    echo "❌ Arquivo .deb do Wanguard não encontrado!"
    exit 1
fi

echo "✅ Wanguard instalado com sucesso!"
echo "➡️ Acesse a interface web via http://<IP_DO_SERVIDOR>:8080"
echo ""
echo "🔐 Usuário padrão: admin"
echo "🔒 Senha padrão: admin"

echo ""
echo "⚠️ Recomendações pós-instalação:"
echo "- Altere a senha padrão imediatamente."
echo "- Configure coleta de NetFlow/sFlow em seu roteador."
echo "- Consulte: https://www.andrisoft.com/support/manual"
