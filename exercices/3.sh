#!/bin/bash

# ramon deu ruim no pc de lucas. Fiz o commit por ele

echo "digite um diretorio"
read "dir"

for i in $(ls "$dir")
do
    if [[ -d "$dir/$i" ]]
    then
        echo "$i (dir)"
    else
        echo "$i"
    fi
done
