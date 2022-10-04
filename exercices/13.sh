#!/bin/bash

arr=($@)

IFS=$'\n' S=(`sort <<< "$arr[*]}"`); unset IFS

printf "%s\n" "$@" | sort
