//
//  KaprekarNumbers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 26/07/2025.
//

import Foundation

//https://www.hackerrank.com/challenges/kaprekar-numbers

struct KaprekarNumbers {
    
    func solve() {
        kaprekarNumbers(p: 400, q: 700)
    }
    
    func kaprekarNumbers(p: Int, q: Int) -> Void {
        var res = ""
        for e in p...q {
            if isKaprekar(p: e) {
                res += String(e) + " "
            }
        }
        if res.isEmpty {
            print ("INVALID RANGE")
        } else {
            res.removeLast()
            print(res)
        }
    }
    
    func isKaprekar(p: Int) -> Bool {
        let squared = p * p
        let strSquared = String(squared)
        if (squared <= 9) {
            return squared == p
        }
        let d = Int(strSquared.count / 2)
        let l = Int(strSquared[0..<d])!
        let r = Int(strSquared[d..<strSquared.count])!
        return l + r == p
    }

}
