#!/bin/bash

function mailAddressDetection {
[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1


cat $1 | grep "@" | sort | uniq > listamails.txt

}
