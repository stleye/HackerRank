//
//  MiniMaxSum.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/mini-max-sum/problem

struct MiniMaxSum {
    
    func solve() {
        miniMaxSum(arr: [1, 3, 5, 7, 9])
    }
    
    func miniMaxSum(arr: [Int]) -> Void {
        
        var sum = 0
        var min = Int.max
        var max = Int.min
        
        for elem in arr {
            sum += elem
            if elem < min { min = elem }
            if elem > max { max = elem }
        }
        
        print ("\(sum-max) \(sum-min)")

    }
    
}
