#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-3/problem

uniq -c -i $1 | sed 's/^ *//g'
