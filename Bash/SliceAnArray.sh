
#!/bin/bash

#https://www.hackerrank.com/challenges/bash-tutorials-read-in-an-array/problem

declare -a arr=(`cut -d $'\n' -f 1-`)
echo ${arr[@]:3:5}
