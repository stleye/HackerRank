//
//  MatrixElementsSum.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-2/xskq4ZxLyqQMCLshr

struct MatrixElementsSum {
    
    func solve() {
        var matrix = [[0, 1, 1, 2],
                      [0, 5, 0, 0],
                      [2, 0, 3, 3]]

        print(solution(matrix: matrix))

        matrix = [[1, 1, 1, 0],
                  [0, 5, 0, 1],
                  [2, 1, 3, 10]]

        print(solution(matrix: matrix))
    }

    func solution(matrix: [[Int]]) -> Int {
        var sum = 0
        let rows = matrix.count
        let columns = matrix[0].count
        for j in 0..<columns {
            for i in 0..<rows {
                if matrix[i][j] != 0 {
                    sum += matrix[i][j]
                } else {
                    break
                }
            }
        }
        return sum
    }
    
}
