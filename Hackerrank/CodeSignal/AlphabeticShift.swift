//
//  AlphabeticShift.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 17/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-6/PWLT8GBrv9xXy4Dui

struct AlphabeticShift {
    
    func solve() {
        print(solution(inputString: "crazy"))
    }

    func solution(inputString: String) -> String {
        let alphabet1 = "abcdefghijklmnopqrstuvwxyz"
        let alphabet2 = "bcdefghijklmnopqrstuvwxyza"
        var dict = [Character: Character]()
        for i in 0..<alphabet1.count {
            let l1 = alphabet1[i]
            let l2 = alphabet2[i]
            dict[l1] = l2
        }
        var res = ""
        for s in inputString {
            res += String(dict[s]!)
        }
        return res
    }
    
}
