//
//  AddTwoDigits.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/code-arcade/intro-gates/wAGdN6FMPkx7WBq66

struct AddTwoDigits {
    
    func solve() {
        print(solution(n: 10))
        print(solution(n: 11))
        print(solution(n: 12))
        print(solution(n: 13))
        print(solution(n: 14))
        print(solution(n: 15))
        print(solution(n: 45))
        print(solution(n: 99))
    }
    
    func solution(n: Int) -> Int {
        return (n / 10) + (n % 10)
    }
    
}
