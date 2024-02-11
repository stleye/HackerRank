//
//  SpecificCharacters.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation
 
//https://www.hackerrank.com/challenges/matching-specific-characters/problem

struct SpecificCharacters: RegexProblem {
    
    var regex: String {
        #"^[123][120][xs0][30aA][xsu][,\.]$"#
    }
    
    func solve() {
        print(solve(input: "12xAx,"))
        print(solve(input: "12xAx."))
        print(solve(input: "12xax."))
        print(solve(input: "10xax."))
        print(solve(input: "19xax."))
    }
    
}
