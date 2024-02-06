//
//  LonelyInteger.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/lonely-integer/problem

struct LonelyInteger {
    
    func solve() {
        print(lonelyinteger(a: [0, 0, 1, 2, 1]))
    }
    
    func lonelyinteger(a: [Int]) -> Int {
        // Write your code here
        var result = 0
        for e in a {
            result ^= e
        }
        return result
    }
    
}
