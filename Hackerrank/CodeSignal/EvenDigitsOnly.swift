//
//  EvenDigitsOnly.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 15/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-6/6cmcmszJQr6GQzRwW

struct EvenDigitsOnly {
    
    func solve() {
        print(solution(n: 248622))
    }

    func solution(n: Int) -> Bool {
        let str = String(n)
        for i in str {
            if Int(i)! % 2 != 0 { return false }
        }
        return true
    }
    
}
