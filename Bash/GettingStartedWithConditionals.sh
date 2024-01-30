#!/bin/bash

#https://www.hackerrank.com/challenges/bash-tutorials---getting-started-with-conditionals/problem

read INPUT

if [[ $INPUT == 'y' || $INPUT == 'Y' ]]; then
	echo "YES"
else
	echo "NO"
fi