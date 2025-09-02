import math


def nonDivisibleSubset(k, s):
    res = 0

    remainders = [0] * k

    for e in s:
        remainders[e % k] += 1

    if remainders[0] > 0:
        res += 1

    for i in range(1, math.ceil(k/2.0)):
        res += max(remainders[i], remainders[k-i])

    if k % 2 == 0:
        if remainders[k//2] > 0:
            res += 1

    return res


# print(nonDivisibleSubset(4, [19, 10, 12, 10, 24, 25, 22]))
print(nonDivisibleSubset(3, [1, 7, 2, 4]))
