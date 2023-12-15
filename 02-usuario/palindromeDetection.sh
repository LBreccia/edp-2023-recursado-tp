#!/bin/bash

palindromeDetection() {
    rev "$1" > archivo_al_reves.txt

    for palabra in $(cat archivo_al_reves.txt); do
        grep -i "$palabra" "$1" > /dev/null && echo "Palíndromo encontrado: $palabra"
    done

    rm archivo_al_reves.txt
}


palindromeDetection "$1"
