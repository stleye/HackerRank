//
//  FindDigits.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 08/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/find-digits/problem

struct FindDigits {
    
    func solve() {
        print(findDigits(n: 2001))
    }
    
    func findDigits(n: Int) -> Int {
        
        var sum = 0
        let digits = String(n)
        for digit in digits where digit != "0" {
            if n % Int(String(digit))! == 0 {
                sum += 1
            }
        }
        return sum
    }
    
}
