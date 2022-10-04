#!/bin/bash

# author: Kelthon Alves

# Exercício 11

# Desenvolva um script qur realize as operações aritiméticas básicas
# (soma, subtração, divisão e multiplicação), recebendo a operação e
# os operadores como parâmetros:
#
# Exemplo
#   calculadora.sh 2 + 2
#   calculadora.sh 2 * 3
#   calculadora.sh 8 / 4
#   calculadora.sh 7 - 2

# Código
# Pega a expressão que o usário deseja saber e usa o bc para calcular

VERSION="1.0"

for OPTION in "$@"; do

    case $OPTION in 
        "-h"|"--help")
                echo "
Calcula um expressão matemática que usuário informa
Usage: $0 [Options...] [Exp...]

Options:

    -h, --help      Exibe essa ajuda.
    -v, --version   Exibe a versão.

Exp podem ser compostas com os simbolos *, +, /, -
como: 13*9, 1.5+7, -5+1, 44/3
        "
        break
    ;;

    "-v"|"--version")
        echo "v$VERSION"
        break
    ;;

    *)
        echo "$@" | bc
        break
    ;;
    esac
done