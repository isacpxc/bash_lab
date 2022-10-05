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
echo "Enter a expression"
read -r OPT

for OPTION in $OPT; do

    case $OPTION in 
        "-h"|"--help")
                echo "
Calculates a mathematical expression that the user enters
Usage: $0 [Options...] [Exp...]

Options:

    -h, --help      Exibe essa ajuda.
    -v, --version   Exibe a versão.

Exp can be composed with the symbols *, +, /, -
like: 13*9, 1.5+7, -5+1, 44/3
        "
        break
    ;;

    "-v"|"--version")
        echo "v$VERSION"
        break
    ;;

    *)
        echo "$OPT" | bc
        break
    ;;
    esac
done
