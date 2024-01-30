//
//  AppleAndOrange.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 29/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/apple-and-orange/problem

struct AppleAndOrange {
    
    func solve() {
        countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2, 3, -4], oranges: [3, -2, -4])
    }

    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
        var appleCount = 0
        var orangeCount = 0
        
        for apple in apples {
            let appleFall = a + apple
            if appleFall >= s && appleFall <= t {
                appleCount += 1
            }
        }
        
        for orange in oranges {
            let orangeFall = b + orange
            if orangeFall >= s && orangeFall <= t {
                orangeCount += 1
            }
        }
        
        print(appleCount)
        print(orangeCount)
    }

}
