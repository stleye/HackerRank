#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-tr-1/problem

cat $1 | tr '(' '[' | tr ')' ']'