#https://www.hackerrank.com/challenges/nested-list/problem

if __name__ == '__main__':
    records = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        records.append([name, score])
   
    lowest = min(records, key=lambda p: p[1])
    second_lowest_score = min([e for e in records if e[1] != lowest[1]], key=lambda p: p[1])[1]

    all_second_lowest = [e for e in records if e[1] == second_lowest_score]
    all_second_lowest = sorted(all_second_lowest, key=lambda p: p[0])

    for e in all_second_lowest:
        print(e[0])
