#!/bin/bash

echo "Criando Pastas de Vendas e Adminsitração..."

cd /
mkdir publico
echo "/publico --> /root/publico"
mkdir adm
echo "/adm --> /root/adm"
mkdir ven
echo "/ven --> /root/ven"
mkdir sec
echo "/ven --> /root/sec"

echo "Pastas criadas com sucesso!"
echo ""
echo "Criando grupos GRP_ADM GRP_VEN GRP_SEC"

groupadd GRP_ADM
echo "GRP_ADM --> OK"
groupadd GRP_VEN
echo "GRP_VEN --> OK"
groupadd GRP_SEC
echo "GRP_SEC --> OK"
echo "Grupos criado com sucesso!"
echo ""

echo "Criando usuarios..."
useradd carlos -c "Carlos ADM" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd carlos -e
echo "user carlos --> OK"

useradd maria -c "Maria ADM" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd maria -e
echo "user maria --> OK"


useradd joao -c "Joao ADM" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd joao -e
echo "user joao --> OK"

useradd debora -c "Debora VEN" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd debora -e
echo "user debora --> OK"

useradd sebastiana -c "Sebastiana VEN" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd sebastiana -e
echo "user sebastiana --> OK"

useradd roberto -c "Roberto VEN" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd roberto -e
echo "user roberto --> OK"

useradd josefina -c "Josefina SEC" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd josefina -e
echo "user josefina --> OK"

useradd amanda -c "Amanda SEC" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd amanda -e
echo "user amanda --> OK"

useradd rogerio -c "Rogerio SEC" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd rogerio -e
echo "user rogerio --> OK"
echo "Usuários criados com sucesso!"
echo ""

echo "Atribuindo permissões..."
chown root:carlos /home/carlos/
chown root:maria /home/maria/
chown root:joao /home/joao/
chown root:debora /home/debora/
chown root:sebastiana /home/sebastiana/
chown root:roberto /home/roberto/
chown root:josefina /home/josefina/
chown root:amanda /home/amanda/
chown root:rogerio /home/rogerio/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/chmod 777 /publica/
chmod 770 /home/carlos/
chmod 770 /home/maria/
chmod 770 /home/joao/
chmod 770 /home/debora/
chmod 770 /home/sebastiana/
chmod 770 /home/roberto/
chmod 770 /home/josefina/
chmod 770 /home/amanda/
chmod 770 /home/rogerio/
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
echo "Permissões setadas com sucesso!"
echo "Finalizando sistema de configuração..."






