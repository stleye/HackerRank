//
//  ArrayChange.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg

struct ArrayChange {
    
    func solve() {
        print(solution(inputArray: [3, 2, 1, 4, 8, 9]))
    }
    
    func solution(inputArray: [Int]) -> Int {
        var res = 0
        var inputArray = inputArray
        for i in 1..<inputArray.count {
            if inputArray[i] <= inputArray[i-1] {
                let diff = inputArray[i-1] - inputArray[i]
                inputArray[i] = inputArray[i] + diff + 1
                res += diff + 1
            }
        }
        return res
    }
    
}
