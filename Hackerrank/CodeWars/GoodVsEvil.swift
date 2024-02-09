//
//  GoodVsEvil.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 09/02/2024.
//

import Foundation

//https://www.codewars.com/kata/52761ee4cffbc69732000738/train/swift

struct GoodVsEvil {
    
    func solve() {
        print(evaluate(good: "1 0 0 0 0 0", vsEvil: "1 0 0 0 0 0 0"))
    }
    
    func evaluate(good: String, vsEvil evil: String) -> String {
        let good = Array(good.split(separator: " ")).map { Int($0)! }
        let evil = Array(evil.split(separator: " ")).map { Int($0)! }
        
        let goodWorth = 1*good[0] + 2*good[1] + 3*good[2] + 3*good[3] + 4*good[4] + 10*good[5]
        let evilWorth = 1*evil[0] + 2*evil[1] + 2*evil[2] + 2*evil[3] + 3*evil[4] + 5*evil[5] + 10*evil[6]
        
        if goodWorth > evilWorth {
            return "Battle Result: Good triumphs over Evil"
        } else if evilWorth > goodWorth {
            return "Battle Result: Evil eradicates all trace of Good"
        } else {
            return "Battle Result: No victor on this battle field"
        }
    }
    
}
