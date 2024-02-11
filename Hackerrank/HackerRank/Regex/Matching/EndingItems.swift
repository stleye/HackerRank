//
//  EndingItems.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-ending-items/problem

struct EndingItems: RegexProblem {
    
    var regex: String {
        #"[a-zA-Z]*s$"#
    }
    
    func solve() {
        print(solve(input: "me"))
    }
    
}
