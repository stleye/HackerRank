//
//  StartAndEnd.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-start-end/problem

struct StartAndEnd: RegexProblem {
    
    var regex: String {
        #"^\d\w\w\w\w\.$"#
    }

    func solve() {
        print(solve(input: "3abcd."))
        print(solve(input: "10aaaa."))
        print(solve(input: "3abcde"))
        print(solve(input: "a3abcd"))
    }
    
}
