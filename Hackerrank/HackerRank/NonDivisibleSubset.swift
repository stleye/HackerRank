//
//  NonDivisibleSubset.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 07/03/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/non-divisible-subset/problem

struct NonDivisibleSubset {

    func solve() {
        //print(nonDivisibleSubset(k: 4, s: [19, 10, 12, 10, 24, 25, 22]))
        let numbers = [
            61197933, 56459859, 319018589, 271720536, 358582070, 849720202, 481165658,
            675266245, 541667092, 615618805, 129027583, 755570852, 437001718, 86763458,
            791564527, 163795318, 981341013, 516958303, 592324531, 611671866, 157795445,
            718701842, 773810960, 72800260, 281252802, 404319361, 757224413, 682600363,
            606641861, 986674925, 176725535, 256166138, 827035972, 124896145, 37969090,
            136814243, 274957936, 980688849, 293456190, 141209943, 346065260, 550594766,
            132159011, 491368651, 3772767, 131852400, 633124868, 148168785, 339205816,
            705527969, 551343090, 824338597, 241776176, 286091680, 919941899, 728704934,
            37548669, 513249437, 888944501, 239457900, 977532594, 140391002, 260004333,
            911069927, 586821751, 113740158, 370372870, 97014913, 28011421, 489017248,
            492953261, 73530695, 27277034, 570013262, 81306939, 519086053, 993680429,
            599609256, 639477062, 677313848, 950497430, 672417749, 266140123, 601572332,
            273157042, 777834449, 123586826
        ]

        print(nonDivisibleSubset(k: 9, s: numbers))
    }

    func nonDivisibleSubset(k: Int, s: [Int]) -> Int {
        let subsets = subsets(s)
        var max = Int.min
        for subset in subsets where subset.count >= 2 {
            var condition = true
            for i in 0..<subset.count-1 {
                for j in i+1..<subset.count {
                    if (subset[i] + subset[j]) % k == 0 {
                        condition = false
                        break
                    }
                }
                if !condition { break }
            }
            if condition && subset.count > max {
                max = subset.count
            }
        }
        return max
    }
    
    func calcSubset(_ A: inout [Int], _ res: inout [[Int]], _ subset: inout [Int], _ index: Int) {
        res.append(subset)
        for i in index..<A.count {
            subset.append(A[i])
            calcSubset(&A, &res, &subset, i + 1)
            subset.removeLast()
        }
    }

    func subsets(_ A: [Int]) -> [[Int]] {
        var subset = [Int]()
        var res = [[Int]]()
        var index = 0
        var mutableA = A
        calcSubset(&mutableA, &res, &subset, index)
        return res
    }
    
}
