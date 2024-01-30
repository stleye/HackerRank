#!/bin/bash

#https://www.hackerrank.com/challenges/bash-tutorials---arithmetic-operations/problem

read expression

float_num=$(echo "$expression" | bc -l)
rounded_num=$(printf "%.3f" "$float_num")
echo $rounded_num