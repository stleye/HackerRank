//
//  MatchingAnythingButANewLine.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

struct MatchingAnythingButANewLine: RegexProblem {

    var regex: String {
        #"^...\....\....\....$"#
    }

    func solve() {
        print(solve(input: "1123.456.abc.def"))
        print(solve(input: "123.456.abc.def"))
    }

}
