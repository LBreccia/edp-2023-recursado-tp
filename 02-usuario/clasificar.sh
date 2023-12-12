#!/bin/bash

RUTA_RECIBIDA=/tmp/outputs  #debe recibir una ruta ¿ASÍ? ¿Hay que hacer alguna verificación?

[ -z "$(ls -A $RUTA_RECIBIDA)" ] && echo "El directorio está vacío, no hay nada para clasificar" && exit 1

mkdir -p $RUTA_RECIBIDA/Imagenes
mkdir -p $RUTA_RECIBIDA/Sonidos
mkdir -p $RUTA_RECIBIDA/Textos


CONT_IMG=1
CONT_SND=1
CONT_TXT=1


for archivo in $RUTA_RECIBIDA; do
    TIPO_ARCHIVO=$(file  "$archivo")
    NOMBRE=$(basename "$archivo")
    case $TIPO_ARCHIVO in
	"PNG image")
	    mv "$RUTA_RECIBIDA/$NOMBRE" "/outputs/Imagenes/imagen$CONT_IMG.png #mueve y renombra el archivo imagen
	    CONT_IMG=$((CONT_IMG+1))
	    ;;
	"WAVE audio")
	    mv "$RUTA_RECIBIDA/$NOMBRE" "/outputs/Sonidos/sonido$CONT_SND.wav
            CONT_SND=$((CONT_SND+1))
	    ;;
	"ASCII text")
	    mv "$RUTA_RECIBIDA/$NOMBRE" "/outputs/Textos/texto$CONT_TXT.txt
            CONT_TXT=$((CONT_TXT+1))
	    ;;
	*)
	    echo "Archivo $NOMBRE no reconocido"
	    ;;
    esac
done
