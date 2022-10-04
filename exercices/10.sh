#!/bin/bash

WORDS=();
INPUT="ok";
HOLD_i=0;
IFS=$'\n'; 

while [[ "$INPUT" != "sair" ]]; do
	if [ $HOLD_i -eq 0 ]; then
		echo "Insert one word: "
	fi	
	read INPUT;
	if [[ "$INPUT" != "sair" ]]; then
		WORDS[$HOLD_i]="$INPUT";
		WORDS_s=($(printf '%s\n' ${WORDS[@]} | sort)); unset IFS
		clear
		echo "CURRENT SORTED LIST:"
		for i in "${WORDS_s[@]}"                                                                                                                                                                               
    	do
    		echo $i
	  	done 
	echo "Insert another word: "  
	fi
	HOLD_i=$((HOLD_i+1));
done



 

