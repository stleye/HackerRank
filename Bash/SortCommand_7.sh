#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-sort-7/problem

sort -t$'|' -k2 -rn $1
