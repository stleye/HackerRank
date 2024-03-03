#!/bin/bash

#https://www.hackerrank.com/challenges/paste-4/problem

paste -d '\t' - - - $1 $1 $1
