//
//  AlternativeMatching.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/alternative-matching/problem

struct AlternativeMatching: RegexProblem {

    var regex: String {
        #"^(Mr\.|Mrs\.|Ms\.|Dr\.|Er\.)[a-zA-Z]+$"#
    }

    func solve() {
        print(solve(input: "Dr.Sebastian"))
    }
    
}
