#!/bin/bash

# author: Kelthon Alves

# Exercício 5
# 
# Elaborar um script que receba um nome de arquivo como parâmetro
# e verifique se esse arquivo existe. Em caso afirmativo, imprimir
# o seu tamanho em bytes.
# 
# Exemplo 1: 
#   
#   ./meuscript.sh /etc/fstab
#   O arquivo /etc/fstab existe e tem 861 bytes.
#   
# Exemplo 2: 
#   
#   ./meuscript.sh /etc/arqqualquer
#   O arquivo /etc/fstab não existe.
# 

# Código
# Verifica se o argumento passado é válido caso seja verifica se o   
# arquivo é um diretório caso não seja imprime seu tamanho

VERSION="1.0"

case $1 in
    "-h"|"--help")
    echo "
Informa o tamanho de um arquivo caso eles exista.

Usage: $0 [Options...] [File]

Options:

    -h, --help      Exibe essa ajuda.
    -v, --version   Exibe a versão.
    "
    ;;

    "-v"|"--version")
        echo "v$VERSION"
    ;;
    *)
        if [[ "$1" ]]; then
            if [ -f "$1" ]; then
                SIZE=$(wc -c "$1" | cut -d " " -f 1)
                echo "O arquivo $1 tem $SIZE byte(s)."
            else    
                echo "$1 não é um arquivo ou não foi encontrado."
            fi
        else
            echo "argumento inválido"
        fi
    ;;
esac