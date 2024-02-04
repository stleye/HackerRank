//
//  RecursiveDigitSum.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 23/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/recursive-digit-sum/problem

struct RecursiveDigitSum {
    
    func solve() {
        print(superDigit(n: "9875", k: 1))
        print(superDigit(n: "9875", k: 2))
        print(superDigit(n: "9875", k: 3))
        print(superDigit(n: "9875", k: 4))
    }

    func superDigit(n: String, k: Int) -> Int {
        if n.count == 1 && k == 1 {
            return Int(String(n))!
        }
        return superDigit(n: String(self.sumDigits(n: n) * k), k: 1)
    }
    
    func sumDigits(n: String) -> Int {
        var sum = 0
        for digit in n {
            sum += Int(String(digit))!
        }
        return sum
    }

}
