#!bin/bash

while
do
  echo "Digite uma palavra: "
  read palavra

  if[$palavra == "sair"]
  then
    break;
  else
    echo "$palavra" >>/tmp/listaOrdenada
  fi
done 

echo "Lista"
sort /tmp/listaOrdenada