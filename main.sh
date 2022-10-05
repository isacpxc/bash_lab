#!/bin/bash

ARRAYTITLE=("1-greater_and_sum_of_two" "2-valid_name?" "3-list_files_and_paths" "4-Even_between" "5-Exist?Then_list_byte_size" "6-Menu_partition_loginUsers_dateHour" "7-Schedule_dates" "8-Rename_by_first" "9-Sorted_Words" "10-Sorted_Words_2" "11-Arithmetic" "12-Registered_users" "13-Most_used_shell" "14-exit");
ARRAYTEXT=("Inform x and y, the algorithm will output the the greater one and the sum of x,y" "Inform user name and will check if a user belongs to the local user group" "Inform the name of any directory and will list the files and the directories inside of it" "Inform one number x, and the algorithm will output all even numbers between 0 and x" "Inform the name of a file and will verify if the file exists" "Displays status of partition use, realtion of logged in users or date/hour" "inform the days of the week, and it will spit out all the dates in the year referring to those days" "Renames files in a directory with the first word found in each file." "Sort list of inputted words" "Inform the words, and the algorithm will sort the words for you" "Calculates a mathematical expression that the user enters" "Present the registered users in the system and they own home directories" "Show the most used shell in /etc/passwd"  "t14");

INPUT=-1;
HOLD_i=0;
answer="a";
reg='^[0-9]{8}$';

clear
while [ $INPUT -ne 14 ]; do
	echo "Anytime you can press \"--help\" to get some help on this menu"
	
	for i in ${ARRAYTITLE[@]}
	do
		HOLD_i=$((HOLD_i+1));
		echo "${i}"	
		
	done
	HOLD_i=0;
	read INPUT;
	#if [[ ! $INPUT =~ $reg ]]; then
	#	echo "PLEASE CHOOSE A VALID OPTION, TO CONTINUE PRESS ENTER";
  #	read enter;
 	# clear;
	#fi

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
	if [[ "$INPUT" == "--help" || ! $INPUT =~ $reg ]]; then
		
		if [[ $INPUT -lt 1 || $INPUT -gt 14 ]]; then
			INPUT=1; 
			clear
			cat help.txt
			echo "PRESS ENTER TO CONTINUE"
			read pressE	
		fi
		clear

	fi

	if [[ "$INPUT" != "--help" ]];then

		if [[ $INPUT -lt 1 || $INPUT -gt 14 ]];
			then
			echo "PLEASE CHOOSE A VALID OPTION, TO CONTINUE PRESS ENTER";
			read enter;
			clear;
		fi

	fi

	
	#clear;
done;
