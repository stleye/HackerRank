//
//  ChessKnight.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-11/pwRLrkrNpnsbgMndb

struct ChessKnight {
    
    func solve() {
        print(solution(cell: "a1"))
        print(solution(cell: "c2"))
    }
    
    func solution(cell: String) -> Int {
        let map = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
        let row = map[cell[0].lowercased()]!
        let col = Int(cell[1].lowercased())!
        let p1 = (row + 2, col + 1)
        let p2 = (row + 1, col + 2)
        let p3 = (row - 2, col + 1)
        let p4 = (row - 1, col + 2)
        let p5 = (row - 2, col - 1)
        let p6 = (row - 1, col - 2)
        let p7 = (row + 2, col - 1)
        let p8 = (row + 1, col - 2)
        let positions = [p1, p2, p3, p4, p5, p6, p7, p8]
        return positions.filter { $0.0 >= 1 && $0.0 <= 8 && $0.1 >= 1 && $0.1 <= 8 }.count
    }
    
}
