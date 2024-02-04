//
//  SubarrayDivision.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 01/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/the-birthday-bar/problem

struct SubarrayDivision {

    func solve() {
        print(birthday(s: [2, 2, 1, 3, 2], d: 4, m: 2))
    }

    func birthday(s: [Int], d: Int, m: Int) -> Int {
        if s.count < m { return 0 }
        var res = 0
        for i in 0...(s.count - m) {
            if s[i..<i+m].reduce(0, +) == d {
                res += 1
            }
        }
        return res
    }
    
}
