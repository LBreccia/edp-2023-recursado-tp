#!/bin/bash

PS3='Elija> '

function clasificar {
       echo LALALA
}       

echo "Hola, soy el menú del TP. ¿Qué quiere hacer?"
select opcion in "Clasificar arhivos" "Monitorear sistema" "Analizar textos" "Salir"
do
	[ -z "$opcion" ] && echo "elegir opción válida." && continue
	[ $REPLY == 1 ] &&  clasificar  && continue
	[ $REPLY == 2 ] && echo "Eligió monitorear sistema" && continue
	[ $REPLY == 3 ] && echo "Analizar textos" && continue
	[ $REPLY == 4 ] && echo "Eligió salir" && break
	echo "Opción elegida: "  $opcion
done

exit 0

	

