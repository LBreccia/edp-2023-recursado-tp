#!/bin/bash

PS3='Elija> '

echo "Hola, soy el menú del TP. ¿Qué quiere hacer?"
select opcion in "Clasificar archivos" "Monitorear sistema" "Analizar textos" "Salir"
do
        [ -z "$opcion" ] && echo "elegir opción válida." && continue
	[ $REPLY == 1 ] && bash clasificar.sh  && continue
	[ $REPLY == 2 ] && bash monitor.sh  && continue
	[ $REPLY == 3 ] && bash analizar.sh && continue
	[ $REPLY == 4 ] && echo "Eligió salir" && break
	echo "Opción elegida: "  $opcion
done


