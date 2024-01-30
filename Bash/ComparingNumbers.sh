#!/bin/bash

#https://www.hackerrank.com/challenges/bash-tutorials---comparing-numbers/problem

read X
read Y

if [[ X -lt Y ]]; then
	echo "X is less than Y"
elif [[ Y -lt X ]]; then
	echo "X is greater than Y"
else
	echo "X is equal to Y"
fi
