//
//  BreakingRecords.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 26/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

struct BreakingRecords {
    
    func solve() {
        print(breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1]))
    }
    
    func breakingRecords(scores: [Int]) -> [Int] {
        var min = scores[0]
        var max = scores[0]
        var minCount = 0
        var maxCount = 0
        
        for score in scores {
            if score < min {
                min = score
                minCount += 1
            } else if score > max {
                max = score
                maxCount += 1
            }
        }
        
        return [maxCount, minCount]
    }
    
}
