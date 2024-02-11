//
//  ExcludingSpecificCharacters.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/excluding-specific-characters/problem

struct ExcludingSpecificCharacters: RegexProblem {
    
    var regex: String {
        #"^[^\d][^aeiou][^bcDF][^\r\n\t\s][^AEIOU][^,\.]$"#
    }
    
    func solve() {
        print(solve(input: "dddddd"))
        print(solve(input: "ddddd."))
        print(solve(input: "ddddd,"))
        print(solve(input: "0ddddd"))
        print(solve(input: "2ddddd"))
    }
    
}
