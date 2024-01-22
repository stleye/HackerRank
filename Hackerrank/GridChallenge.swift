//
//  GridChallenge.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 22/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/grid-challenge/problem

struct GridChallenge {
    
    func solve() {
        print(gridChallenge(grid: ["abc", "hjk", "mpq", "rtv"]))
    }
    
    func gridChallenge(grid: [String]) -> String {
        if grid.count == 1 { return "YES" }
        var grid = grid
        for row in 0..<grid.count {
            grid[row] = String(grid[row].sorted())
        }
        for col in 0..<grid[0].count {
            for row in 0..<grid.count-1 {
                if grid[row][col] > grid[row+1][col] { return "NO" }
            }
        }
        return "YES"
    }
    
}
