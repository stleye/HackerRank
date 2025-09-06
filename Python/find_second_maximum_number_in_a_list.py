#https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem

if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    
    first = max(arr)
    second = max([x for x in arr if x != first])

    print(second)