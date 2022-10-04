#!/bin/bash

echo "Inform x:"
read X;

echo "Inform y"
read Y


if test $X -gt $Y
then
	echo "$X>$Y"
elif test $X -lt $Y
then
	echo "$Y>$X"
else
	echo "$X=$Y"
fi
