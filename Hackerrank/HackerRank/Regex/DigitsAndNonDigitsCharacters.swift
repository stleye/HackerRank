//
//  DigitsAndNonDigitsCharacters.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-digits-non-digit-character/problem

struct DigitsAndNonDigitsCharacters: RegexProblem {
    
    var regex: String {
        #"\d\d\D\d\d\D\d\d\d\d"#
    }

    func solve() {
        print(solve(input: "12a34g1234"))
        print(solve(input: "12a34g12x4"))
    }

}
