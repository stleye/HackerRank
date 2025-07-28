//
//  HackerRankIsAString.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 28/07/2025.
//

import Foundation

//https://www.hackerrank.com/challenges/hackerrank-in-a-string

struct HackerRankIsAString {
    
    func solve() {
        print(hackerrankInString(s: "hackerworld"))
    }
    
    func hackerrankInString(s: String) -> String {
        let hackerRank = "hackerrank"
        var i = 0
        for j in 0..<s.count {
            if hackerRank[i] == s[j] {
                i += 1
                if i == hackerRank.count {
                    return "YES"
                }
            }
        }
        return "NO"
    }
    
}
