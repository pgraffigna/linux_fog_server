#!/usr/bin/env bash
# script para instalar fog-project 

#Colores
redColour="\e[0;31m\033[1m"
endColour="\033[0m\e[0m"

URL="https://github.com/FOGProject/fogproject/archive/1.5.9.tar.gz"
TAR="1.5.9.tar.gz"
DIR="fogproject-1.5.9"

# Ctrl-C
trap ctrl_c INT
function ctrl_c(){
        echo -e "\n${redColour}[++] Programa Terminado [++]${endColour}"
        exit 0
}

# limpieza
trap "rm -f $TAR" EXIT

if [ -d "$DIR" ]; then
    echo "fog ya esta instalado"
    exit 0
else    
    wget -q ${URL} && tar -xzvf ${TAR}
    sudo ./$DIR/bin/installfog.sh -y
fi  