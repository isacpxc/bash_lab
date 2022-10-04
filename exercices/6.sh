#!bin/bash


echo "1 - Utilização das partições;"
echo "2 - Exibir relação de usuários logados;"
echo "3 - Exibir data/hora;"
echo "4 - Sair."


read resposta


if[$resposta -eq 1]
then
  df -hora
fi
if[$resposta -eq 2]
then
  who
fi
if[$resposta -eq 3]
then 
  date
fi
if[$resposta -eq 4]
then
  exit
fi