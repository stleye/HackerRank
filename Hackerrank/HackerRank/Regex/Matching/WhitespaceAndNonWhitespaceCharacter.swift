//
//  WhitespaceAndNonWhitespaceCharacter.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-whitespace-non-whitespace-character/problem

struct WhitespaceAndNonWhitespaceCharacter: RegexProblem {
    
    var regex: String {
        #"\S\S\s\S\S\s\S\S"#
    }
    
    func solve() {
        print(solve(input: "23 02 93"))
        print(solve(input: "23 02 93 "))
    }
    
}
