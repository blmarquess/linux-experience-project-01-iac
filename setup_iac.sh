#!/bin/bash

group_list=(
  GRP_ADM
  GRP_VEN
  GRP_SEC
)

users_group_adm=(
  carlos
  maria
  joao_
)

users_group_ven=(
  debora
  sebastiana
  roberto
)

users_group_sec=(
  josefina
  amanda
  rogerio
)


echo "Inicianando a rotina de criação de usuários e grupos"

echo "Criando os grupos.:"
for group in ${group_list[@]}; do
  echo "Criando o grupo $group"
  groupadd $group
done


