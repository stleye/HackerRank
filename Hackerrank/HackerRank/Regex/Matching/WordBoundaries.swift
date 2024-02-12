//
//  WordBoundaries.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-word-boundaries/problem

struct WordBoundaries: RegexProblem {
    
    var regex: String {
        #"\b[aeiouAEIOU][a-zA-Z]*\b"#
    }
    
    func solve() {
        print(solve(input: "Found any match?"))
    }
    
}
