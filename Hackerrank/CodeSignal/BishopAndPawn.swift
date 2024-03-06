//
//  BishopAndPawn.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-9/6M57rMTFB9MeDeSWo

struct BishopAndPawn {
    
    func solve() {
        print(solution(bishop: "d4", pawn: "a7"))
        print(solution(bishop: "d4", pawn: "h8"))
        print(solution(bishop: "d4", pawn: "a1"))
        print(solution(bishop: "d4", pawn: "g1"))
    }
    
    func solution(bishop: String, pawn: String) -> Bool {
        let map = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
        let brow = map[bishop[0].lowercased()]!
        let bcol = Int(bishop[1].lowercased())!
        let prow = map[pawn[0].lowercased()]!
        let pcol = Int(pawn[1].lowercased())!
        return abs(bcol - pcol) == abs(brow - prow)
    }

    
}
