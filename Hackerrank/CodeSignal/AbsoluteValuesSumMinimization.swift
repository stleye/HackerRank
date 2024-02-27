//
//  AbsoluteValuesSumMinimization.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 21/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-7/ZFnQkq9RmMiyE6qtq

struct AbsoluteValuesSumMinimization {
    
    func solve() {
        print(solution(a: [5, 7, 8, 100, 100000, 100001]))
    }
    
    func solution(a: [Int]) -> Int {
        var min = Int.max
        var minElem = Int.max
        for e in a {
            let diff = a.reduce(0) { $0 + abs($1 - e) }
            if diff < min {
                min = diff
                minElem = e
            }
        }
        return minElem
    }
    
}
