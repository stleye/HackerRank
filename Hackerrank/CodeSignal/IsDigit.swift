//
//  IsDigit.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-11/Zr2XXEpkBPtYWqPJu

struct IsDigit {
    
    func solve() {
        print(solution(symbol: "0"))
    }

    func solution(symbol: Character) -> Bool {
        return Int(symbol) != nil
    }

    
}
