//
//  AVeryBigSum.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/a-very-big-sum/problem

struct AVeryBigSum {
    
    func solve() {
        print(aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]))
    }
    
    func aVeryBigSum(ar: [Int]) -> Int {
        return ar.reduce(0, +)
    }
    
}
