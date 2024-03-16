//
//  SumUpNumbers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-12/YqZwMJguZBY7Hz84T

struct SumUpNumbers {
    
    func solve() {
        print(solution(inputString: "2 apples, 12 oranges"))
    }
    
    func solution(inputString: String) -> Int {
        let pattern = #"(\d)+"#
        let matches = inputString.regexMatches(pattern: pattern)
        return matches.map { Int($0)! }.reduce(0, +)
    }

    
}
