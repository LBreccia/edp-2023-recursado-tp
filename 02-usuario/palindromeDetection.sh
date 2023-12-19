#!/bin/bash

esPalindromo() {
	palabra_min=$(echo $1 | tr '[:upper:]' '[:lower:]')
	reversed=$(echo "$palabra_min" | rev)
	if [ "$palabra_min" == "$reversed" ]; then
		return 0 #es palindromo
	else
		return 1
	fi
}


palindromeDetection() {
	rev "$1" > archivo_al_reves.txt

	for palabra in $(cat archivo_al_reves.txt); do
		if esPalindromo "$palabra"; then
			echo "$palabra"
		fi
	done
}

palindromeDetection "$1"

