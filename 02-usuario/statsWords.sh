#!/bin/bash

function statsWords {

[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1

palabra_mas_corta=10000
palabra_mas_larga=0
suma_acumulada=0
cantidad_palabras=0
long_palabra_temp=0
promedio=0

for palabra in $(cat $1);
    do
          long_palabra_temp=${#palabra} #Esta variable guarda la long de la palabra
          if [[ $long_palabra_temp -lt  $palabra_mas_corta ]]
          then
              palabra_mas_corta=$long_palabra_temp
          fi
          if [[ $long_palabra_temp -gt $palabra_mas_larga ]]
          then
              palabra_mas_larga=$long_palabra_temp
          fi
          suma_acumulada=$((suma_acumulada+long_palabra_temp))
          cantidad_palabras=$((cantidad_palabras+1))
done

promedio=$((suma_acumulada/cantidad_palabras))

echo "El promedio de la longitud de las palabras es " $promedio
echo "La longitud de la palabra mas larga es " $palabra_mas_larga
echo "La longitud de la mas corta es " $palabra_mas_corta
}

statsWords "$1"
