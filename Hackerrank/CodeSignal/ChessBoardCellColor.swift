//
//  ChessBoardCellColor.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 17/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-6/t97bpjfrMDZH8GJhi

struct ChessBoardCellColor {
    
    func solve() {
        print(solution(cell1: "A1", cell2: "C3"))
        print(solution(cell1: "A1", cell2: "H3"))
    }

    func solution(cell1: String, cell2: String) -> Bool {
        return stepsFrom(cell1: cell1, to: cell2) % 2 == 0
    }

    private func stepsFrom(cell1: String, to cell2: String) -> Int {
        let colNumbers = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
        let col1 = colNumbers[cell1[0].lowercased()]!
        let row1 = Int(cell1[1])!
        let col2 = colNumbers[cell2[0].lowercased()]!
        let row2 = Int(cell2[1])!
        return abs(row2-row1) + abs(col2-col1)
    }
    
}
