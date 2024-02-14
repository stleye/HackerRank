//
//  Minesweeper.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-5/ZMR5n7vJbexnLrgaM

struct Minesweeper {
    
    func solve() {
        let matrix = [[true, false, false],
                      [false, true, false],
                      [false, false, false]]
        print(solution(matrix: matrix))
    }

    func solution(matrix: [[Bool]]) -> [[Int]] {
        let rows = matrix.count
        let cols = matrix[0].count
        var res = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        for i in 0..<rows {
            for j in 0..<cols {
                let neighbours = neighboursOf(row: i, column: j, rows: rows, cols: cols)
                res[i][j] = neighbours.reduce(0) { $0 + (matrix[$1.row][$1.col] ? 1 : 0) }
            }
        }
        return res
    }

    func neighboursOf(row: Int, column: Int, rows: Int, cols: Int) -> [(row: Int, col: Int)] {
        var res = [(Int, Int)]()
        for i in row-1...row+1 {
            for j in column-1...column+1 {
                if i >= 0 && j >= 0 && i < rows && j < cols {
                    if !(i == row && j == column) {
                        res.append((i, j))
                    }
                }
            }
        }
        return res
    }

}
