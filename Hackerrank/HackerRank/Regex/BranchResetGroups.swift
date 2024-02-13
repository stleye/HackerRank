//
//  BranchResetGroups.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/branch-reset-groups/problem

struct BranchResetGroups: RegexProblem {
    
    var regex: String {
        #"^\d\d(---|-|\.|:)\d\d\1\d\d\1\d\d$"#
    }
    
    func solve() {
        print(solve(input: "12-34-56-78"))
        print(solve(input: "12---34---56---78"))
        print(solve(input: "12:34:56:78"))
    }
    
}
