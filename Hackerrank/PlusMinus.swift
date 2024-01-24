//
//  PlusMinus.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

struct PlusMinus {
    
    func solve() {
        plusMinus(arr: [1, 1, 0, -1, -1])
    }
    
    func plusMinus(arr: [Int]) -> Void {
        var positives = 0.0
        var negatives = 0.0
        var zeros = 0.0
        var n = Double(arr.count)
        
        for elem in arr {
            if elem > 0 {
                positives += 1
            } else if elem < 0 {
                negatives += 1
            } else {
                zeros += 1
            }
        }
        print(positives / n)
        print(negatives / n)
        print(zeros / n)
    }
    
}
