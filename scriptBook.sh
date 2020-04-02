#!/usr/bin/env bash

#########################################
#    Desarrollado por: d3vcr4ck         #
#                                       #
#                                       #
#  Script que vuelve un archivo pdf     #
#     a un mismo formato para ser       #
#       impreso y encuadernado          #
#                                       #
#                                       #
#########################################
if [ "$#" -ne 1 ];then
  echo "Usage $0 <file.pdf>"
  exit 1
fi

var=$1
echo "File: $var"
pdf2ps "${var}" first.ps
psbook first.ps lib.ps
ps2pdf lib.ps "convert_${var}"
rm first.ps lib.ps
echo "Succesfull new file convert_${var}"
