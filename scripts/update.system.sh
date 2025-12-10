#!/bin/bash

# Script simples para instalar ferramentas essenciais em sistemas baseados em Debian.

echo "Atualizando lista de pacotes..."
sudo apt update

echo
echo "Instalando ferramentas essenciais..."

# Pacotes básicos de uso comum no dia a dia
sudo apt install -y git curl vim wget htop tree net-tools

# Pequena verificação simples (nível júnior)
echo
echo "Verificando se os pacotes foram instalados..."

for pkg in git curl vim wget htop tree net-tools; do
    if command -v $pkg >/dev/null 2>&1; then
        echo "[OK] $pkg instalado."
    else
        echo "[ERRO] $pkg não está instalado."
    fi
done

echo
echo "Instalação concluída!"