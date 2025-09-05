#https://www.hackerrank.com/challenges/incorrect-regex/problem

import sys
import re

if __name__ == '__main__':
    n = int(input().strip())
    
    for i in range(0, n):
        pattern = sys.stdin.readline()
        try:
            re.compile(pattern)
        except re.error:
            print(False)
            continue

        if re.search(r'([*+?]{2,})', pattern):
            print(False)
            continue

        print(True)
        