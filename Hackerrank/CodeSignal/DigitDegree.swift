//
//  DigitDegree.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 05/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-9/hoLtYWbjdrD2PF6yo

struct DigitDegree {
    
    func solve() {
        print(solution(n: 5))
        print(solution(n: 100))
        print(solution(n: 91))
    }
    
    func solution(n: Int) -> Int {
        if n < 10 { return 0 }
        return 1 + solution(n: digits(of: n).reduce(0, +))
    }
    
    private func digits(of number: Int) -> [Int] {
        if number == 0 { return [0] }
        var digitsArray = [Int]()
        var num = number
        if num < 0 {
            num *= -1
        }
        while num > 0 {
            let digit = num % 10
            digitsArray.insert(digit, at: 0) // Insert at the beginning to maintain correct order
            num /= 10
        }
        return digitsArray
    }
    
}
