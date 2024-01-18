//
//  FlippingTheMatrix.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 18/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/flipping-the-matrix/problem

struct FlippingTheMatrix {
    
    func solve() {
        let matrix = [[112, 42, 83, 119],
                      [56, 125, 56, 49],
                      [15, 78, 101, 43],
                      [62, 98, 114, 108]]
        
        print(FlippingTheMatrix().flippingMatrix(matrix: matrix))
    }

    func flippingMatrix(matrix: [[Int]]) -> Int {
        let n = matrix.count
        var result = 0
        for i in 0..<n/2 {
            for j in 0..<n/2 {
                result += max(matrix[i][j], matrix[i][n-j-1], matrix[n-i-1][j], matrix[n-i-1][n-j-1])
            }
        }
        return result
    }

}

