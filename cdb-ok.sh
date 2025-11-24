#!/bin/bash

# Caminho para o cdb.sh 
CDB_FILE="$(dirname "$0")/cdb.sh"

# 1 - Carregar variável DIR
if [[ ! -f "$CDB_FILE" ]]; then
    echo "Erro: cdb.sh não encontrado"
    exit 1
fi

# Extrair DIR sem aspas
DIR=$(grep -E '^DIR=' "$CDB_FILE" | cut -d '=' -f2 | tr -d '"')

if [[ -z "$DIR" ]]; then
    echo "Erro: variável DIR não encontrada no cdb.sh"
    exit 1
fi

# Normalizar removendo barra final
DIR="${DIR%/}"

# Diretório atual
CUR=$(pwd)
CUR="${CUR%/}"

# 2 - Verificar se CUR está dentro de DIR
case "$CUR/" in
    "$DIR/"* )
        # OK
        ;;
    * )
        echo "Erro: entre no diretório '$DIR' para continuar"
        exit 1
        ;;
esac

echo "OK: Atualizando dados"

# 3 - Git add/commit/push
git add .
git commit -m "ok"
git push origin main
