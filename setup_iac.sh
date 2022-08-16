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

create_users() {
  echo "Crindo usuarios do grupo de administradores..."

  for adm_user in ${users_group_adm[@]}; do
    useradd -m -s /bin/bash $adm_user -p $(openssl passwd -crypt Senha123) -G ${group_list[0]}
    echo "Criado o usuario $adm_user com sucesso e adicionado ao grupo -> ${group_list[1]}"
  done

  echo "Crindo usuarios do grupo de vendas..."

  for ven_user in ${users_group_ven[@]}; do
    useradd -m -s /bin/bash $ven_user -p $(openssl passwd -crypt Senha123) -G ${group_list[1]}
    echo "Criado o usuario $ven_user com sucesso e adicionado ao grupo -> ${group_list[1]}"
  done

  echo "Crindo usuarios do grupo de segurança..."
  for sec_user in ${users_group_sec[@]}; do
    useradd -m -s /bin/bash $sec_user -p $(openssl passwd -crypt Senha123) -G ${group_list[2]}
    echo "Criado o usuario $sec_user com sucesso e adicionado ao grupo -> ${group_list[2]}"
  done

  echo "Usuarios criados com sucesso!"
}

echo "Crindo usuarios e adicionando aos seus respectivos grupos."
create_users
