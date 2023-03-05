#!/bin/bash

echo "Script Iniciando"

echo "Diretórios"

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários"

useradd -m carlos -s /bin/bash -p $(openssl passwd senha123)
useradd -m maria -s /bin/bash -p $(openssl passwd senha123)
useradd -m joao -s /bin/bash -p $(openssl passwd senha123)

useradd -m debora -s /bin/bash -p $(openssl passwd senha123)
useradd -m sebastiana -s /bin/bash -p $(openssl passwd senha123)
useradd -m roberto -s /bin/bash -p $(openssl passwd senha123)

useradd -m josefina -s /bin/bash -p $(openssl passwd senha123)
useradd -m amanda -s /bin/bash -p $(openssl passwd senha123)
useradd -m rogerio  -s /bin/bash -p $(openssl passwd senha123)

echo "Adicinando usuários aos seus respectivos grupos"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Adicionando permissão total para os usuários ao diretório 'publico' "

chmod 777 publico

echo "Configurando as permissões dos usuários em outros diretórios de outros usuários"

chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Espeficando o dono de cada grupo criado"

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Script Finalizado"
