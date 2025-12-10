#!/bin/bash


# Configurações (você pode alterar)
ORIGEM="$HOME/teste"
DESTINO="$HOME/backups"


# Nome do arquivo com data/hora
ARQUIVO_BACKUP="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Executa o backup
tar -czf "$DESTINO/$ARQUIVO_BACKUP" -C "$ORIGEM" .

# Mensagem final
echo "Backup de $ORIGEM criado em $DESTINO/$ARQUIVO_BACKUP"
