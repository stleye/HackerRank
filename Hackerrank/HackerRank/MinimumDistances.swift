//
//  MinimumDistances.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 20/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/minimum-distances/problem

struct MinimumDistances {
    
    func solve() {
        print(minimumDistances(a: [3, 2, 1, 2, 3]))
        print(minimumDistances(a: [7, 1, 3, 4, 1, 7]))
    }
    
    func minimumDistances(a: [Int]) -> Int {
        var dict = [Int: [Int]]()
        for i in 0..<a.count {
            let e = a[i]
            var indices = dict[e] ?? []
            indices.append(i)
            dict[e] = indices
        }
        var res: Int?
        for key in dict.keys {
            if (dict[key]!.count % 2) == 0 {
                let sorted = dict[key]!.sorted()
                for i in 0..<sorted.count - 1 {
                    let diff = abs(sorted[i]-sorted[i+1])
                    if diff < (res ?? Int.max) {
                        res = diff
                    }
                }
            }
        }
        return res ?? -1
    }
    
}
