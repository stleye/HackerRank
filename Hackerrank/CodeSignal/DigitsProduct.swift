//
//  DigitsProduct.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-12/NJJhENpgheFRQbPRA

struct DigitsProduct {
    
    func solve() {
        print(solution(product: 19))
        print(solution(product: 12))
        print(solution(product: 450))
    }
    
    func solution(product: Int) -> Int {
        guard product > 0 else {return 10}
        guard product > 1 else {return 1}
        var val = product, current = 9
        var digits = [Int]()
        while val > 1 {
            if val % current == 0 {
                val = val / current
                digits.append(current)
                current = 10
            }
            current -= 1
            guard current > 1 else {
                return -1
            }
        }
        return Int(digits.sorted().reduce("") { return "\($0)" + "\($1)"})!
    }

    

    
}
