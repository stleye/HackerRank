#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-cut-5/problem

while read line; 
do
	echo "${line}" | cut -f 1-3 -d $'\t'
done