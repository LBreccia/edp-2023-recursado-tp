#!/bin/bash

RUTA_RECIBIDA=$1  #debe recibir una ruta ¿ASÍ? ¿Hay que hacer alguna verificación?

mkdir outputs #¿hace falta?
mkdir -p outputs/Imagenes   #si ya existen, esta función los vuelve a crear?
mkdir -p outputs/Sonidos
mkdir -p outputs/Textos


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

