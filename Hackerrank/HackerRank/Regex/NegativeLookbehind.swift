//
//  NegativeLookbehind.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/negative-lookbehind/problem

struct NegativeLookbehind: RegexProblem {
    
    var regex: String {
        #"(?<![aeiouAEIOU])."#
    }

    func solve() {
        print(solve(input: "12345"))
    }

}
