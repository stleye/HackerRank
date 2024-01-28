//
//  DiagonalDifference.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import Foundation

struct DiagonalDifference {
    
    func solve() {
        print(diagonalDifference(arr: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]))
    }
    
    func diagonalDifference(arr: [[Int]]) -> Int {
        var sum1 = 0
        var sum2 = 0

        for i in 0..<arr.count {
            sum1 += arr[i][i]
            sum2 += arr[i][arr.count - 1 - i]
        }
        
        return abs(sum1 - sum2)
    }

}
