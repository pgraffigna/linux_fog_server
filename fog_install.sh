#!/usr/bin/env bash
# script para instalar fog-project 

URL="https://github.com/FOGProject/fogproject/archive/1.5.9.tar.gz"
TAR="1.5.9.tar.gz"

wget ${URL} 
tar -xzvf ${TAR}
cd fogproject-1.5.9/bin
sudo ./installfog.sh