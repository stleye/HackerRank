#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-2

sort $1 | uniq -c
