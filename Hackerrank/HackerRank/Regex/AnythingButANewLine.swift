//
//  MatchingAnythingButANewLine.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-anything-but-new-line/problem

struct AnythingButANewLine: RegexProblem {

    var regex: String {
        #"^...\....\....\....$"#
    }

    func solve() {
        print(solve(input: "1123.456.abc.def"))
        print(solve(input: "123.456.abc.def"))
    }

}
