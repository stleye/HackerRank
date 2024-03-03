//
//  ArrayMaxConsecutiveSum.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 02/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-8/Rqvw3daffNE7sT7d5

struct ArrayMaxConsecutiveSum {
    
    func solve() {
        print(solution(inputArray: [1, 3, 2, 4], k: 3))
    }
    
    func solution(inputArray: [Int], k: Int) -> Int {
        var max = Int.min
        for i in 0...(inputArray.count - k) {
            let sum = inputArray[i..<i+k].reduce(0, +)
            if sum > max {
                max = sum
            }
        }
        return max
    }

    
    
    
}
