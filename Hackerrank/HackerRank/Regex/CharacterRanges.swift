//
//  CharacterRanges.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-range-of-characters/problem

struct CharacterRanges: RegexProblem {
    
    var regex: String {
        #"^[a-z][1-9][^a-z][^A-Z][A-Z]"#
    }
    
    func solve() {
        print(solve(input: "h4CkR"))
    }

}
