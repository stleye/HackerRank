//
//  ChocolateFeast.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 29/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/chocolate-feast/problem

struct ChocolateFeast {
    
    func solve() {
        print(chocolateFeast(n: 7, c: 3, m: 2))
        print(chocolateFeast(n: 12, c: 4, m: 4))
        print(chocolateFeast(n: 6, c: 2, m: 2))
        print(chocolateFeast(n: 10, c: 2, m: 5))
    }
    
    func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
        var res = 0
        
        var bars = n / c
        res += bars

        var wrappers = bars
        
        while (wrappers / m) > 0 {
            bars = wrappers / m
            res += bars
            wrappers = bars + (wrappers % m)
        }
        
        return res
    }
    
}
