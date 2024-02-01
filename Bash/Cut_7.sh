#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-cut-7/problem

while read line;
do
    echo "${line}" | cut -d " " -f 4
done