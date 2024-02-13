//
//  ArrayMaximalAdjacentDifference.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-5/EEJxjQ7oo7C5wAGjE

struct SrrayMaximalAdjacentDifference {
    
    func solve() {
        print(solution(inputArray: [2, 4, 1, 0]))
    }
    
    func solution(inputArray: [Int]) -> Int {
        var max = Int.min
        for i in 0..<inputArray.count - 1 {
            let diff = abs(inputArray[i]-inputArray[i+1])
            if diff > max { max = diff }
        }
        return max
    }
    
}
