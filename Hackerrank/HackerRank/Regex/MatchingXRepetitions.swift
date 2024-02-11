//
//  MatchingXRepetitions.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-x-repetitions/problem

struct MatchingXRepetitions: RegexProblem {
    
    var regex: String {
        #"^[a-zA-Z02468]{40}[13579\s]{5}$"#
    }
    
    func solve() {
        print(solve(input: "abcdefgijdabcdefgijdabcdefgijdabcdefgijd35713")) //true
        print(solve(input: "abcdefgijdabcdefgijdabcdefgijdabcdefgijd3571 ")) //true
        print(solve(input: "abcdefgijdabcdefgijdabcdefgijdabcdefgijd32571")) //false
        print(solve(input: "x4202v2A22A8a6aaaaaa2G2222m222qwertyYuIo13957")) //true
        print(solve(input: "x4202v2A22A9a6aaaaaa2G2222m222qwertyYuIo13957")) //true
    }
    
}
