#!/bin/bash

function palindromeDetection {

	rev $1 > archivo_al_reves.txt
	for palabra in archivo_al_reves.txt;
	do
  	     grep -i $palabra $1  #busca si palabra está en el archivo original  sin distinguir min-mayus y lo muestra?
	done
}

