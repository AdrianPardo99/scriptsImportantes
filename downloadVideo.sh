#!/usr/bin/env bash

if [ "$#" -ne 2 ];then
  echo "Usage: $0 <url-1> <output.format>"
fi

url=$1
output=$2
ffmpeg -i ${url} ${output}
