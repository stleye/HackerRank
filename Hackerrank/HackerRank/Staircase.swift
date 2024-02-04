//
//  Staircase.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/staircase/problem

struct Staircase {
    
    func solve() {
        staircase(n: 10)
    }
    
    func staircase(n: Int) -> Void {
        for i in 1...n {
            print(String(repeating: " ", count: n-i) + String(repeating: "#", count: i))
        }

    }
    
}
