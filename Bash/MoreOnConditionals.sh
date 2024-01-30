#!/bin/bash

#https://www.hackerrank.com/challenges/bash-tutorials---more-on-conditionals/problem

read X
read Y
read Z

if [[ X -eq Y && Y -eq Z ]]; then
	echo "EQUILATERAL"
elif [[ X -ne Y && X -ne Z && Y -ne Z ]]; then
	echo "SCALENE"
else
	echo "ISOSCELES"
fi