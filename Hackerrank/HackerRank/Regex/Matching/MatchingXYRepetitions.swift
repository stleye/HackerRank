//
//  MatchingXYRepetitions.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/matching-x-y-repetitions/problem

struct MatchingXYRepetitions: RegexProblem {
    
    var regex: String {
        #"^[\d]{1,2}[a-zA-Z]{3,}[\.]{0,3}$"#
    }
    
    func solve() {
        print(solve(input: "12SebastianYamilTleye.")) //true
        print(solve(input: "12SebastianYamilTleye..")) //true
        print(solve(input: "12SebastianYamilTleye...")) //true
        print(solve(input: "12SebastianYamilTleye....")) //false
        print(solve(input: "1SebastianYamilTleye..")) //true
        print(solve(input: "SebastianYamilTleye..")) //false
    }
    
}
