//
//  PositiveLookahead.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/positive-lookahead/problem

struct PositiveLookahead: RegexProblem {
    
    var regex: String {
        #"o(?=oo)"#
    }

    func solve() {
        print(solve(input: "goooool!"))
    }

}
