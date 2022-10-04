#!/bin/bash

# author: Kelthon Alves

# Exercício 2
#
# Elaborar um script que soicite a informação de um nome de usuário e
# verifique se o nome informado é um usuário válido no sistema
# (desconsiderando as diferenças entre maiúsculas e minúsculas).
#
# Exemplo 1:
#
#   ./meuscript.sh
#   Informe o nome do usuário a ser consultado: Bill
#   Bill não é um usuário cadastrado.
#
# Exemplo 2:
#
#   ./meuscript.sh
#   Informe o nome do usuário a ser consultado: Linus
#   Linus é um usuário cadastrado.
#

# Código
# Verifica se foi passado algum argumento caso contrário pede ao usu-
# ário um nome a qual ele queira saber se está na lista de usuários
# daquela máquina.

VERSION="1.0"

if [[ "$1" ]]; then
    case $1 in
        "-h"|"--help")
            echo "
Verifica se um usuário pertence ao grupo de usuários locais

Usage: $0 [Options...] [name]

Options:

    -h, --help      Exibe essa ajuda.
    -v, --version   Exibe a versão.
    "
    ;;

        "-v"|"--version")
            echo "v$VERSION"
        ;;

        *)
            echo "invalid argument $1"
        ;;
    esac
else 
    echo "Inform the name of the user to be consulted: "
    read -r USER

    USER_LIST=$(grep -iE "root|home" /etc/passwd)

    if echo "$USER_LIST" | grep -qis "$USER"; then
        echo "$USER is a registered user."
    else    
        echo "$USER is not a registered user."
    fi
fi
