#!/bin/bash

#Script de ingesta

# 1. Instalar dependencias de extracción
echo "Instalando unrar..."
wget https://www.rarlab.com/rar/rarlinux-x64-5.6.0.tar.gz
tar -zxvf rarlinux-x64-5.6.0.tar.gz
cd rar
sudo cp -v rar unrar /usr/local/bin/
cd ..
rm -rf rar rarlinux-x64-5.6.0.tar.gz

# 2. Descargar los datos crudos a la carpeta 'data/raw'
echo "Descargando datos del MINEDUC..."
# Asegurar que el directorio de destino exista
mkdir -p ../../../data/raw
cd ../../../data/raw

# Aquí puedes agregar el bucle for que tenías para descargar los años 2002-2024