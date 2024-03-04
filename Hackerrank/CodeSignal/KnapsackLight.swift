//
//  KnapsackLight.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-9/r9azLYp2BDZPyzaG2

struct KnapsackLight {
    
    func solve() {
        print(solution(value1: 1, weight1: 2, value2: 11, weight2: 3, maxW: 1))
    }
    
    func solution(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
        if weight1 + weight2 <= maxW {
            return value1 + value2
        } else if weight1 <= maxW && weight2 <= maxW {
            return max(value1, value2)
        } else if weight1 <= maxW {
            return value1
        } else if weight2 <= maxW {
            return value2
        }
        return 0
    }
    
}
