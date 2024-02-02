//
//  DivisibleSumPairs.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 01/02/2024.
//

import Foundation

struct DivisibleSumPairs {

    func solve() {
        print(divisibleSumPairs(n: 6, k: 5, ar: [1, 2, 3, 4, 5, 6]))
    }

    func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
        var res = 0
        for i in 0..<n-1 {
            for j in i+1..<n {
                if (ar[i] + ar[j]) % k == 0 {
                    res += 1
                }
            }
        }
        return res
    }

}
