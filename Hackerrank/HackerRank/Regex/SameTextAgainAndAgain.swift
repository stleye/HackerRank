//
//  SameTextAgainAndAgain.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-same-text-again-again/problem

struct SameTextAgainAndAgain: RegexProblem {
    
    var regex: String {
        #"^(a-z)(\w)(\s)(\W)(\d)(\D)(A-Z)(a-zA-Z)(aeiouAEIOU)(\S)\1\2\3\4\5\6\7\8\9\10$"#
    }
    
    func solve() {
        print(solve(input: "ab #1?AZa$ab #1?AZa$"))
        print(solve(input: "sd !3mARI3sd !3mARI3"))
    }
    
}
