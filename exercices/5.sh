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
Informs the size of one file if it exists

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
                echo "file $1 has $SIZE byte(s) size."
            else    
                echo "$1 is not a file or was not founded."
            fi
        else
            echo "invalid argument"
        fi
    ;;
esac
