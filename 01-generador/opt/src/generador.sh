#!/bin/bashtmp/output

#Generador aleatorio de archivos

OUTPUT_DIR=/tmp/outputs
mkdir -p $OUTPUT_DIR

OPCIONES=("Archivo de texto" "Archivo de sonido" "Archivo de imagen")
OPCION_ALEATORIA=${OPCIONES[$RANDOM % ${#OPCIONES[@]}]}

case "$OPCION_ALEATORIA" in
    "Archivo de texto")
        # Generar un archivo de texto
        base64 /dev/urandom | head -c 500 > $OUTPUT_DIR/file.txt
        mv $OUTPUT_DIR/file.txt $OUTPUT_DIR/file
        echo "Archivo de texto 'file.txt' creado."
        ;;
    "Archivo de sonido")
        # Generar un archivo de sonido
        ffmpeg -f lavfi -i "anoisesrc=a=0.1:c=white:duration=5" $OUTPUT_DIR/file.wav
	mv $OUTPUT_DIR/file.wav $OUTPUT_DIR/file
        echo "Archivo de sonido 'out.wav' creado."
        ;;
    "Archivo de imagen")
        # Generar un archivo de imagen
        convert -size 100x100 xc: +noise Random $OUTPUT_DIR/file.png
        mv $OUTPUT_DIR/file.png $OUTPUT_DIR/file
        echo "Archivo de imagen 'noise.png' creado."
        ;;
    *)
        echo "Opción no válida. Algo salió mal."
        ;;
esac

CHECKSUM=$(md5sum $OUTPUT_DIR/file | cut -d " " -f 1)

mv $OUTPUT_DIR/file $OUTPUT_DIR/$CHECKSUM
