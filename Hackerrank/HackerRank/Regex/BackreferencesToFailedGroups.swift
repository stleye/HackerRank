//
//  BackreferencesToFailedGroups.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/backreferences-to-failed-groups/problem

struct BackreferencesToFailedGroups: RegexProblem {

    var regex: String {
        #"^\dd(-?)\d\d\1\d\d\1\d\d$"#
    }

    func solve() {
        print(solve(input: ""))
    }

}
