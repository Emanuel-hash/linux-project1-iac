#!/bin/bash

echo "Criando Diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios"

useradd carlos -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd  senha123) -G GRP_VEN

echo "Especificando as permissões do diretorio..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..." 
