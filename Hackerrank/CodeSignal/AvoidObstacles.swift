//
//  AvoidObstacles.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-5/XC9Q2DhRRKQrfLhb5

struct AvoidObstacles {
    
    func solve() {
        print(solution(inputArray: [5, 3, 6, 7, 9]))
    }
    
    func solution(inputArray: [Int]) -> Int {
        if inputArray.isEmpty { return 1 }
        var d = 1
        while true {
            d += 1
            if (inputArray.first { $0 % d == 0 }) == nil { return d }
        }
        
    }
    
}
