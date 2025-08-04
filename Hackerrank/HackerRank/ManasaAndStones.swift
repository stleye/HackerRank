//
//  ManasaAndStones.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 29/07/2025.
//

import Foundation

//https://www.hackerrank.com/challenges/manasa-and-stones

struct ManasaAndStones {
    
    func solve() {
        print(stones(n: 4, a: 10, b: 100))
    }
    
    func stones(n: Int, a: Int, b: Int) -> [Int] {
        var stepI: [Int] = [0]
        for _ in 1...n-1 {
            var nextStep: [Int: Int] = [:]
            for k in stepI {
                nextStep[k+a] = (nextStep[k+a] ?? 0) + 1
                nextStep[k+b] = (nextStep[k+b] ?? 0) + 1
            }
            stepI = Array(nextStep.keys)
        }
        return stepI.sorted()
    }
    
}
