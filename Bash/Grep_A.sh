#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-4/problem

grep -i -E "\b(the|that|then|those)\b" $1
