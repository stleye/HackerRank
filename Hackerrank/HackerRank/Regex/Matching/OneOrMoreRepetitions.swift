//
//  OneOrMoreRepetitions.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-one-or-more-repititions/problem

struct OneOrMoreRepetitions: RegexProblem {
    
    var regex: String {
        #"^[\d]+[A-Z]+[a-z]+$"#
    }
    
    func solve() {
        print(solve(input: ""))
    }
    
}
