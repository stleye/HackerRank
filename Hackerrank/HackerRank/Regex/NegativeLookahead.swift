//
//  NegativeLookahead.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/negative-lookahead/problem

struct NegativeLookahead: RegexProblem {
    
    var regex: String {
        #"(.)(?!\1)"#
    }

    func solve() {
        print(solve(input: "goooool!"))
    }

}
