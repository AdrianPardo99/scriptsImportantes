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
#                                       #
#            Versión 2                  #
#########################################
if [ "$#" -ne 1 ];then
  echo "Usage $0 <file.pdf>"
  exit 1
fi

var=$1
echo "File: $var"
pdf2ps "${var}" - | psbook | pstops '2:1L@0.6(18cm,2cm)+0L@0.6(18cm,15cm)' | ps2pdf - "convert_book_${var}"

echo "Succesfull new file convert_${var}"
