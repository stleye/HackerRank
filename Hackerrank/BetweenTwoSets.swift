//
//  BetweenTwoSets.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 31/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/between-two-sets/problem

struct BetweenTwoSets {
    
    func solve() {
        print(getTotalX(a: [2], b: [1]))
    }
    
    func getTotalX(a: [Int], b: [Int]) -> Int {
        let gdc = a.lcm()
        let lcm = b.gdc()
        var sum = 0

        if gdc > lcm { return 0 }

        for i in gdc...lcm {
            if i % gdc == 0 && lcm % i == 0 {
                sum += 1
            }
        }
        
        return sum
    }

}
