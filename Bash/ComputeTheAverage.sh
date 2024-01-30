#!/bin/bash

#https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/problem

read n

sum=0

for (( i = 1; i <= n; i++ )); do
	read m
	sum=$(( sum + m ))
done

average=$(echo "$sum / $n" | bc -l)

echo $(printf "%.3f" "$average")