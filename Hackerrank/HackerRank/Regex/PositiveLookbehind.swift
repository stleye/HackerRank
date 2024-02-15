//
//  PositiveLookbehind.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/positive-lookbehind/problem

struct PositiveLookbehind: RegexProblem {
    
    var regex: String {
        #"(?<=[13579])\d"#
    }

    func solve() {
        print(solve(input: "12345"))
    }

}
