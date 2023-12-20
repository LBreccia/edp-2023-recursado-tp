#!/bin/bash

function mailAddressDetection {
[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1


cat $1 | grep -Eo '\b[A-Za-z0-9._%+-]+@\w+.(com|ar)\b' | sort | uniq > listamails.txt

cat listamails.txt
}


mailAddressDetection "$1"
