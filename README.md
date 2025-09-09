# README - Script de Backup de Cartões

Este script facilita o acesso e organização de diretórios de cartões em um backup local.

Localização do Script:
`~/documentar_cartao/cdb.sh`

## Como Usar
O script é pensado para ser usado com 'source', assim ele pode usar 'return' sem encerrar o shell.

Alias sugerido:
Adicionar este alias ao seu .bashrc ou .zshrc:
``` bash
alias cdb="source ~/documentar_cartao/cdb.sh"
```

Depois recarregue o shell:
``` bash
source ~/.bashrc
# ou
source ~/.zshrc
```

Executando o Script:
Passe como parâmetro o ID do cartão do Jira (apenas IDs maiores que 13.000 são aceitos, por razões próprias):
``` bash
cdb 17523
```
O script irá:
1. Verificar se o ID do cartão é maior que 13000.
    - Caso contrário, exibirá uma mensagem de erro e interromperá a execução.
2. Limpar a tela e navegar até o diretório principal de cartões (~/backup_cartoes/cartoes).
3. Criar um diretório para o cartão caso ele ainda não exista.
4. Entrar no diretório do cartão e listar o conteúdo.

Observações:
- É necessário que o diretório principal de cartões (~/backup_cartoes/cartoes) exista.
- O script utiliza 'return' em vez de 'exit' para permitir o uso com 'source'.
- IDs de cartão com menos de 5 dígitos ou menores que 13000 são considerados inválidos.