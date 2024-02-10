//
//  SumOfTwoSmallestIntegersIn.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation


struct SumOfTwoSmallestIntegers {
    
    func solve() {
        print(sumOfTwoSmallestIntegersIn([10, 343445353, 3453445, 3453545353453]))
    }
    
    func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
        var min1 = Int.max
        var min2 = Int.max
        
        for e in array {
            if e < min1 {
                min2 = min1
                min1 = e
            } else if e < min2 {
                min2 = e
            }
        }

        return min1 + min2
    }
    
}
