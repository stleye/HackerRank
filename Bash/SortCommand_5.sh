#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-sort-5/problem

sort -t$'\t' -k2 -nr $1
