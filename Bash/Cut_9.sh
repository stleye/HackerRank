#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-cut-9/problem

while read line;
do
    echo "${line}" | cut -d$'\t' -f 2-
done