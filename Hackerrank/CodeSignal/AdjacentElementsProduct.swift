//
//  AdjacentElementsProduct.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-2/xzKiBHjhoinnpdh6m

struct AdjacentElementsProduct {
    
    func solve() {
        print(solution(inputArray: [3, 6, -2, -5, 7, 3]))
    }
    
    func solution(inputArray: [Int]) -> Int {
        var max = Int.min
        for i in 0..<inputArray.count - 1 {
            let mult = inputArray[i] * inputArray[i+1]
            if mult > max {
                max = mult
            }
        }
        return max
    }
    
}
