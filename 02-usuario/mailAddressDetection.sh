#!/bin/bash

function mailAddressDetection {
[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1


cat $1 | grep -Eo '\w+@\w+.(com|ar)' | sort | uniq > listamails.txt

}
