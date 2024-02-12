//
//  ZeroOrMoreRepetitions.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-zero-or-more-repetitions/problem

struct ZeroOrMoreRepetitions: RegexProblem {
    
    var regex: String {
        #"^[\d]{2,}[a-z]*[A-Z]*$"#
    }
    
    func solve() {
        print(solve(input: "14"))
    }
    
}
