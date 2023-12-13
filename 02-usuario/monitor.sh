#!/bin/bash

TZ="America/Argentina/Buenos_Aires" date # Configuración de la Zona Horaria

fecha_hora=$(date +"%d_%m_%y:%H_%M_%S")

cpu_uso=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}') # Obtención del Uso total de la CPU

ram_uso=$(free -m | awk '/Memoria:/ {print $3}') # Obtención del Uso de la RAM

procesos=$(ps aux | wc -l) # Conteo de Procesos

disk_libre=$(df --output=avail -h / | sed -n '2p') # Obtención del Espacio Libre en Disco

# Creación el informe
report="Uso de CPU: $cpu_uso%\nUso de RAM: $ram_uso MB\nNúmero de procesos: $procesos\nEspacio libre en disco: $disk_libre"


# Guardado del informe en archivo
echo -e "$report" > "/tmp/outputs/report_$fecha_hora.txt"

echo "Informe guardado en /tmp/outputs/report_$fecha_hora.txt"
