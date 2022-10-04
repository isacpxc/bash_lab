#!/bin/bash

# author: Kelthon Alves

# Exercício 8
#
# Considere um determinado diretório que possui vários arquivos text-
# os. Esses arquivos possuem nomes variados, não obdecendo a qualquer
# critério. Escreva um script que renomei cada arquivo desse diretó-
# rio, dando ao arquivo o nome correspodente à primeira palavra en-
# contrada no conteúdo do próprio arquivo.
#

# Código
# Verifica se foi passado algum argumento caso positivo verifica se
# esse argumento existe. Em seguida para cada arquivo existente ele
# checa se o arquivo é de fato um arquivo ou se é um diretorio ou se
# é um arquivo executável e os ignora caso contrario renomeia

VERSION="1.0"

case $1 in
    "-h"|"--help")
        echo "
Renames files in a directory with the first word found in each file.

Usage: $0 [Options...] [Directory]

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
            if [[ -d "$1" ]]; then
                for FILE in "$1"*; do
                    if [[ ! -d $FILE && ! -x $FILE ]]; then
                        FILENAME="$(head "$FILE" -n 1 | cut -d " " -f 1)"
                        if [[ "$FILE" = "$1$FILENAME" ]]; then
                            echo "$FILE has the same name as your first word"
                        else
                            mv "$FILE" "$1$FILENAME"
                            echo "$FILE was renamed to $1$FILENAME"
                        fi
                    elif [[ -x $FILE && ! -d $FILE ]]; then
                        echo "$FILE is an executable file. [Igonored]"
                    else
                        echo "$FILE is an executable directory. [Igonored]"
                    fi
                done
            else    
                echo "$1 is not an directory or was not founded"
            fi
        else
										echo "Invalid argument."
        fi
    ;;

esac
