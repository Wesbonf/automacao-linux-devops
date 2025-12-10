#!/bin/bash

# Informações básicas do sistema

echo "===== INFORMAÇÕES DO SISTEMA ====="
echo

echo "Hostname:"  
hostname
echo

echo "Kernel:"  
uname -r
echo

echo "Memória (livre/total):"
free -h | grep Mem:
echo

echo "Uso de disco (/):"
df -h | grep "/$"
echo

echo "IP da máquina:"
hostname -I
echo
