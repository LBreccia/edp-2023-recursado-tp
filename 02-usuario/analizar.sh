#!/bin/bash

PS3='Elija> '

read -p "Ingrese el texto a analizar: " TEXTO


echo "Selecciona el tipo de análisis a realizar."
select opcion in "Indicador estadístico de longitud de palabra" "Mostrar palabras palíndromos" "Detectar y listar direcciones de mail" "Salir"
do
	[ -z "$opcion" ] && echo "Elegir opción válida." && continue
	[ $REPLY == 1 ] && bash statsWords.sh $TEXTO && continue
	[ $REPLY == 2 ] && bash palindromeDetection.sh $TEXTO && continue
	[ $REPLY == 3 ] && bash mailAddressDetection.sh $TEXTO && continue
	[ $REPLY == 4 ] && echo "Eligió salir" && break
	echo "Opción elegida: "  $opcion
done
exit 0
