//
//  CapturingAndNonCapturingGroups.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/capturing-non-capturing-groups/problem

struct CapturingAndNonCapturingGroups: RegexProblem {
    
    var regex: String {
        #"(ok){3,}"#
    }
    
    func solve() {
        print(solve(input: "okokoksebastian"))
        print(solve(input: "okokok"))
        print(solve(input: "okoook"))
    }
    
}
