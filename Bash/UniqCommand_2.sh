#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-2

uniq -c $1 | sed 's/^ *//g'
