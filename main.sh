#!/bin/bash

ARRAYTITLE=("1-greater_and_sum_of_two" "2-valid_name?" "3-list_files_and_paths" "4-Even_between" "5-Exist?Then_list_byte_size" "6-Menu_partition_loginUsers_dateHour" "7-Schedule_dates" "8-Rename_by_first" "9-Sorted_Words" "10-Sorted_Words_2" "11-Arithmetic" "12-Registered_users" "13-Most_used_shell" "14-exit");
ARRAYTEXT=("Inform x and y, the algorithm will output the the greater one and the sum of x,y" "2" "text_3" "Inform one number x, and the algorithm will output all even numbers between 0 and x" "text_5" "6" "text_7" "8" "9" "Inform the words, and the algorithm will sort the words for you" "11" "12" "Show the most used shell in /etc/passwd"  "t14");
echo "====LOADED====";
INPUT=-1;
HOLD_i=0;
answer="a";
clear
while [ $INPUT -ne 14 ]; do
	echo "Anytime you can press \"--help\" to get some help on this menu"
	#echo "1 - q1";
	#echo "2 - q2";
	#echo "3 - q3";
	#echo "4 - q4";
	#echo "14 - exit"
	for i in ${ARRAYTITLE[@]}
	do
		HOLD_i=$((HOLD_i+1));
	#	if [ $HOLD_i -eq $INPUT ]; then
	#		echo "*${i}"
	#		echo "---->texto da questão $HOLD_i"
	#	else
			echo "${i}"	
	#	fi
		
	done
	HOLD_i=0;
	read INPUT;
	
	############
	if [[ $INPUT -gt 0 && $INPUT -lt 14 ]]
	then
		clear
		echo "${ARRAYTITLE[$INPUT-1]}"
		echo "->Text: ${ARRAYTEXT[$INPUT-1]}"
		echo "confirm[y/n]?"
		read answer;
		if [[ "$answer" == "y" ]] 
		then
			bash ./exercices/$INPUT.sh
			echo "PRESS ENTER TO CONTINUE"
			read pressE;
			clear
		fi
		clear
		answer="a";
		
	fi
	if [[ "$INPUT" == "--help" ]]; then
		clear	
		cat help.txt
		echo "PRESS ENTER TO CONTINUE"
    read pressE;
		INPUT=1;
		clear

	fi

	if [[ "$INPUT" != "--help" ]];then

		if [[ $INPUT -lt 0 || $INPUT -gt 14 ]];
			then
			echo "PLEASE CHOOSE A VALID OPTION, TO CONTINUE PRESS ENTER";
			read enter;
			clear;
		fi

	fi

	
	#clear;
done;
