//
//  WordAndNonWordCharacter.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-word-non-word/problem

struct WordAndNonWordCharacter: RegexProblem {
    
    var regex: String {
        #"\w\w\w\W\w\w\w\w\w\w\w\w\w\w\W\w\w\w"#
    }
    
    func solve() {
        print(solve(input: "www.hackerrank.com"))
    }

}
