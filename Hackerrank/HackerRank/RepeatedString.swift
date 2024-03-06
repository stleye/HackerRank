//
//  RepeatedString.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/03/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/repeated-string/problem

struct RepeatedString {
    
    func solve() {
        print(repeatedString(s: "abasebaatian", n: 8))
        print(repeatedString(s: "a", n: 1000000000000))
    }
    
    func repeatedString(s: String, n: Int) -> Int {
        if n <= s.count {
            return s[0..<n].filter{ $0 == "a" }.count
        }

        let t = n / s.count
        let r = n % s.count
        
        let numberOfAs = s.filter { $0 == "a" }.count
        let numberOfAsP = s[0..<r].filter { $0 == "a" }.count
        
        return (t * numberOfAs) + numberOfAsP
    }
    
}
