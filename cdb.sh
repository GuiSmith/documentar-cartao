#!/bin/bash

DIR="/home/smith/backup_cartoes/cartoes"
ID_CARTAO=$1

# Se cartão for menor que 13k, é provavelmente um ID inválido
if [ $ID_CARTAO -lt 13000 ]; then
  echo -e "Número de cartão muito pequeno... "
  return 1
fi

# Limpa a tela e vai até o diretório de cartões
clear
cd "$DIR"

# Se não tem um diretório para este cartão, cria
if [ ! -d "$ID_CARTAO" ]; then
  mkdir -p "$ID_CARTAO"
fi

# Navega até o diretório do cartão
cd "$ID_CARTAO"
ls

return 0