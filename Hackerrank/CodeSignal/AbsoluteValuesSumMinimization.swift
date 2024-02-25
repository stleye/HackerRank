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
        print(solution(a: [2, 3]))
    }
    
    func solution(a: [Int]) -> Int {
        let sum = a.reduce(0, +)
        var min = Int.max
        let n = a.count
        for e in a {
            if abs(n*e - sum) < min {
                min = e
            }
        }
        return min
    }
    
}
