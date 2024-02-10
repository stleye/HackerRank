//
//  Sudoku.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/SKZ45AF99NpbnvgTn/description

struct Sudoku2 {
    
    func solve() {
        let grid = [[".",".",".",".",".",".","5",".","."],
                    [".",".",".",".",".",".",".",".","."],
                    [".",".",".",".",".",".",".",".","."],
                    ["9","3",".",".","2",".","4",".","."],
                    [".",".","7",".",".",".","3",".","."],
                    [".",".",".",".",".",".",".",".","."],
                    [".",".",".","3","4",".",".",".","."],
                    [".",".",".",".",".","3",".",".","."],
                    [".",".",".",".",".","5","2",".","."]]
        let newGrid = grid.map({ p in
            p.map { r in
                Character(r)
            }
        })
        print(solution(grid: newGrid))
    }
    
    func solution(grid: [[Character]]) -> Bool {
        let n = grid.count

        var dict = [Int: Int]()

        for i in 0..<n {
            for j in 0..<n {
                if let gridElement = Int(String(grid[i][j])) {
                    if dict[gridElement] != nil {
                        return false
                    } else {
                        dict[gridElement] = 1
                    }
                }
            }
            dict.removeAll(keepingCapacity: true)
        }
        
        for j in 0..<n {
            for i in 0..<n {
                if let gridElement = Int(String(grid[i][j])) {
                    if dict[gridElement] != nil {
                        return false
                    } else {
                        dict[gridElement] = 1
                    }
                }
            }
            dict.removeAll(keepingCapacity: true)
        }
        
        for k in stride(from: 0, to: 9, by: 3) {
            for q in stride(from: 0, to: 9, by: 3) {
                for i in q..<(q+3) {
                    for j in k..<(k+3) {
                        if let gridElement = Int(String(grid[i][j])) {
                            if dict[gridElement] != nil {
                                return false
                            } else {
                                dict[gridElement] = 1
                            }
                        }
                    }
                }
                dict.removeAll(keepingCapacity: true)
            }
        }
        
        return true
    }
    
}
