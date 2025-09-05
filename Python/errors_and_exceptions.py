#https://www.hackerrank.com/challenges/exceptions/problem

import sys

if __name__ == '__main__':
    n = int(input().strip())
    
    for i in range(0, n):
        a, b = sys.stdin.readline().split()
        
        try:
            a = int(a)
            b = int(b)
            print (a//b)
        except ZeroDivisionError as e:
            print('Error Code:', e)
        except ValueError as e:
            print('Error Code:', e)