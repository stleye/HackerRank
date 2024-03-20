//
//  DifferentSquares.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-12/fQpfgxiY6aGiGHLtv

struct DifferentSquares {
    
    func solve() {
        let matrix = [[1, 2, 1],
                      [2, 2, 2],
                      [2, 2, 2],
                      [1, 2, 3],
                      [2, 2, 1]]
        print(solution(matrix: matrix))
    }
    
    func solution(matrix: [[Int]]) -> Int {
        var res = Set<[Int]>()
        let m = matrix
        let rows = matrix.count
        let cols = matrix[0].count
        for i in 0..<rows-1 {
            for j in 0..<cols-1 {
                let m1 = [m[0+i][0+j],
                          m[0+i][1+j],
                          m[1+i][0+j],
                          m[1+i][1+j]]
                res.insert(m1)
            }
        }
        
        return res.count
    }
    
}
